import std.stdio;
import std.range,
       std.algorithm;

auto solve()
{
    static uint sumOfDivisor(uint n)
    {
        return iota(1, n).filter!(a => n % a == 0).sum();
    }

    return iota(2, 10000)
            .filter!((a){
                auto b = sumOfDivisor(a);
                return a != b && a == sumOfDivisor(b);
            }).sum();
}

void main()
{
    writeln(solve());
}
