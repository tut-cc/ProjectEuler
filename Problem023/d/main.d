import std.algorithm,
       std.math,
       std.range,
       std.stdio;


uint sumOfDivisor(uint x)
{
    if(x <= 1) return 0;
    
    uint root = cast(uint)sqrt(cast(real)x);
    bool sq;
    if(root^^2 == x)
        sq = true;

    uint sum;
    foreach(uint i; 1 .. root+1)
        if(x % i == 0){
            sum += i;
            sum += (x/i);
        }

    return sum - x - (sq ? root : 0);
}


uint solve()
{
    bool[] isAbundant = new bool[28124];

    iota(2, 28124).filter!(a => a.sumOfDivisor > a).each!((a){
        isAbundant[a] = true;
    });

    return
    iota(1, 28124).filter!(a => iota(2, a+1).filter!(b => isAbundant[b]).filter!(b => isAbundant[a - b]).count() == 0)
    .sum();
}


// きつい
//pragma(msg, solve());


void main()
{
    writeln(solve());
}