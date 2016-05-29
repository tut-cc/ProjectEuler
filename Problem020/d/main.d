import std.algorithm,
       std.bigint,
       std.range,
       std.stdio;

uint solve()
{
    return BigInt(1).recurrence!"a[n-1]*n".drop(100).front
    .recurrence!"a[n-1]/10".until(0).map!"cast(uint)(a%10)"
    .sum;
}


void main()
{
    writeln(solve());
}