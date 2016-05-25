import std.stdio;
import std.range, std.algorithm;

uint solve()
{
    return iota(1, 101).sum^^2 - iota(1, 101).map!"a^^2".sum;
}


pragma(msg,  solve());


void main()
{
    writeln(solve());
}
