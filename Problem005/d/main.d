import std.stdio;
import std.numeric;
import std.range, std.algorithm;


ulong solve()
{
    // 1〜20までの最小公倍数lcm(1, .. , 20)を求めればよい
    // lcm(a, b) = a * b / gcd(a, b)
    return iota(1, 21).reduce!((a, b) => a / gcd(a, b) * b);
}

pragma(msg, solve());

void main()
{
    writeln(solve());
}
