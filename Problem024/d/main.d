import std.algorithm,
       std.conv,
       std.range,
       std.stdio;


string solve()
{
    uint[] n = [0,1,2,3,4,5,6,7,8,9];
    uint cnt;

    while(nextPermutation(n)){
        ++cnt;
        if(cnt == 1_000_000-1)
            return n.map!(to!string).join();
    }

    assert(0);
}


// つらそう
//pragma(msg, solve());


void main()
{
    writeln(solve());
}