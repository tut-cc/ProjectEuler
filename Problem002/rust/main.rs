use std::vec::Vec;
fn main() {
    let mut seq=fibonacci(4000000);
    let mut sum:i64=0;
    while let Some(element) = seq.pop()
    {
        sum+= match element % 2 
        {
            0 => element,
            _ => 0,
        }
    }
    println!("{}",sum);
}
fn fibonacci(n:i64) -> Vec<i64>
{
    let mut  fib:Vec<i64>=vec![1,1];
    while let Some(top) = fib.pop()
    {  
        if top > n 
        {
            break;
        } 
        let second= match fib.pop()
        {
            Some(x) => x,
            _ => 1,
        };
        fib.push(second);
        fib.push(top);
        fib.push(top+second);      
    }
    fib
} 