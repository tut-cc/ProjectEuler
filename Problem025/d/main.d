import std.algorithm,
       std.bigint,
       std.math,
       std.range,
       std.stdio;

auto solve()
{
    BigInt lim = 1;
    foreach(i; 1 .. 1000)
        lim *= 10;


    return recurrence!"a[n-1]+a[n-2]"(BigInt(1), BigInt(1))
    .until!"a>b"(lim)
    .walkLength() + 1;
}


pragma(msg, solve());


void main()
{
    writeln(solve());
}