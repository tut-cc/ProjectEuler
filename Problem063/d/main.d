import std.algorithm,
       std.bigint,
       std.range,
       std.stdio;

uint solve(){
    /+
    p = m^^nとする。
    floor(log(p) + 1)= floor(log(m^^n)) + 1 = nとなればよい。(ただし、対数の底は10)
    floor(n(1 - log(m))) = 1であるから、1 > log(m)となり，mは1~9である．
    さらにlog(9) ≒ 0.9542であるから、
    nについては22まで調べれば良い。
    +/
    uint cnt;
    foreach(m; 1 .. 10){
        BigInt a = 1;

        foreach(n; 1 .. 22){
            a *= m;

            auto d = a.recurrence!"a[n-1]/10".until!"a==0".map!"a%10";
            if(d.walkLength == n)
                ++cnt;
            else if(d.walkLength > n)
                break;
        }
    }

    return cnt;
}


void main()
{
    writeln(solve());
}