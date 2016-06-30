

fn main() {
    let x:i64=600851475143 ;
    println!("{}",get_factor(x));
}
fn get_factor(n:i64) ->i64 {
    
    let mut m=n;
    let mut div=2;
    
    while m>1
    {
        if m%div==0
        {
            m/=div;
        }
        else
        {
            div+=1;
        } 
    }
    let factor = div;
    factor
}
