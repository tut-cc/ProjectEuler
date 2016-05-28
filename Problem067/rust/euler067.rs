use std::io::prelude::*;
use std::fs::File;
use std::str::FromStr;
use std::fmt::Debug;
use std::cmp;

fn convert_from_str<T: FromStr>(line: &str) -> Vec<T> where T::Err : Debug {
    line.split_whitespace()
        .map(
            |x| x.parse::<T>().unwrap()
            ).collect()
}

fn main() {
    let mut s = String::new();
    {
        let mut f = File::open("triangle.txt").unwrap();
        f.read_to_string(&mut s);
    }

    let mut veci : Vec<Vec<i32>> = s.lines().map(convert_from_str).collect();

    for row in (1..veci.len()).rev() {
        for col in 0..(veci[row].len() - 1) {
            veci[row-1][col] += cmp::max(veci[row][col], veci[row][col+1]);
        }
    }

    println!("{}", veci[0][0]);
}
