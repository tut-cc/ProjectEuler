import std.algorithm,
       std.datetime,
       std.range,
       std.stdio;


ulong solve()
{
    return Date(1901, 1, 1).recurrence!`a[n-1].add!"months"(1)`
    .until(Date(2001, 1, 1))
    .filter!(a => a.day == 1 && a.dayOfWeek == DayOfWeek.sun)
    .count;
}


pragma(msg, solve());


void main()
{
    writeln(solve());
}