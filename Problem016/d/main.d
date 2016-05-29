import std.algorithm,
       std.bigint,
       std.range,
       std.stdio;

int solve()
{
    BigInt a = 1;
    a <<= 1000;
    return a.recurrence!"a[n-1]/10".until(0).map!"cast(uint)(a%10)".sum();
}


pragma(msg, solve());


void main()
{
    writeln(solve());
}