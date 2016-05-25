import std.stdio;
import std.math;

pragma(msg, solve());

uint solve()
{
    // 3桁×3桁なので，回文数は6桁になる
    // 解法の方針は，まず6桁の回文数を大きい順番で生成し，
    // その回文数の3桁の約数を列挙し，割り算した結果が3桁になるかチェックする

    foreach_reverse(n; 100 .. 1_000){
        // 6桁の回文数の生成
        auto x = n * 1_000 + (n%10)*100 + (n/10)%10*10 + n/100;

        foreach(m; 100 .. 1_000)
            if(x % m == 0){
                // 約数mについて，x / mが3桁になるか判定
                auto d = log10(x / m);
                if(d >= 2 && d < 3)
                    return x;
            }
    }

    return uint.init;
}


void main()
{
    writeln(solve());
}
