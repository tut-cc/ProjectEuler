use std::str::FromStr;
use std::error::Error;
use std::cmp;

// 練習がてらRustのエラーハンドリングをきっちり調べてみた編
// 以下コメントは調査内容のdump

// Rustには例外が無く、値による厳密なハンドリングor不正はシステムに影響を与える前に即クラッシュのどちらか
// 厳しいけど取り敢えず例外にして後はユーザが気をつけてね、みたいな目に見えない糞を書かせない仕組みは良い
// ハンドリングせずunwrapで殺している版はProblem018のRustを見てね
// 静的/動的ディスパッチを意識させられるので慣れが必要

// 幾つか段階があって、最も堅実なのはその場毎のエラーを表現するenumを実装すること(エラーの型情報までしっかり渡る
// エラーの要因が複数あり返値から分析,分岐の必要があるならまずこれ
// とはいえ単純な理由ならOptionで良いしstd内のエラーなら大体実装されてるので必要なのは独自の構造体の場合
// 次点でエラー系のstructが共通で実装しているトレイトオブジェクトで返す方法
// StringよりはErrorトレイトオブジェクトを返したい,StringからErrorへ変換するFromトレイトも実装されている
// Tに実装されたFromStrトレイトのErr型はそれぞれのT毎に実装されているため共通のErrorトレイトオブジェクトで返す
// 基本stdのエラー系の型はErrorを実装済であり、descriptionやcauseメソッドでエラーについて幾つかの情報が出力できる
fn parse_from_line<T: FromStr>(line: &str) -> Result<Vec<T>, Box<Error>>
where T::Err: Error + 'static {
    // 'staticは関連型T::ErrがTとlifetimeを共有してない事を示す制約...のはず
    // デフォルトでは関連型は包含元とlifetimeも関連している
    // 実はBoxの制約が既に'staticを要求している(マルチスレッドを考慮すれば自明だが

    let mut res = Vec::new();
    // 早期リターンのtry!がクロージャ内になってしまうため
    // イテレータだけで簡潔に書くのは諦める
    for num_str in line.split_whitespace() {
        res.push(try!(num_str.parse::<T>())); // TにFromStrを要求することでTへのparseが可能になる
        // tryマクロはResultを受け取りOkであればそのまま返し、
        // Errであればその値を関数の戻り値の型に変換して早期リターン(即時脱出&値は返す)を行う
        // このマクロ内では型間の変換方法を提供するFromトレイトを用いる
    }
    Ok(res)
}

fn main() {
    use std::io::BufReader;
    use std::io::prelude::*;
    use std::fs::File;

    let f = File::open("triangle.txt").expect("Error: Can't open a file. Is this path correct?");
    let mut veci : Vec<Vec<i32>> =
        BufReader::new(f)
        .lines()
        .map(|x|
             parse_from_line(&x.expect("Error: read lines"))
             .or_else(|x| { print!("Error: {}", x.description()); Err(x) }) // or_divergeが欲しい
             .unwrap())
        .collect();

    for row in (1..veci.len()).rev() {
        for col in 0..(veci[row].len() - 1) {
            veci[row-1][col] += cmp::max(veci[row][col], veci[row][col+1]);
        }
    }

    println!("{}", veci[0][0]);
}
