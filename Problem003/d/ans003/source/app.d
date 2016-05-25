import std.stdio;
import std.algorithm;

import carbon.math;

pragma(msg, solve());

ulong solve()
{
    return primeFactorsSimple(600_851_475_143UL).maxPos[0][0];
}

void main()
{
    writeln(solve());
}
