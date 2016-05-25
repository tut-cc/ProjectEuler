// pragma(msg, 2_000_000.solve);

auto solve(immutable int N) pure nothrow @safe
{
    long sum = 0;
    for (int i = 2; i < N; ++i) {
        bool flag = true;
        for (int j = 2; flag && j * j <= i; ++j) {
            flag &= i % j != 0;
        }
        if (flag) {
            sum += i;
        }
    }
    return sum;
}

void main()
{
    import std.stdio;
    2_000_000.solve.writeln;
}
