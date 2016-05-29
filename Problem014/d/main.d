import std.algorithm,
       std.range,
       std.stdio,
       std.typecons,
       std.conv;


uint solve()
{
    return iota(3, 1_000_000, 2)
    .map!(a => a.tuple(a.to!ulong.recurrence!"a[n-1] % 2 == 0 ? a[n-1]/2 : a[n-1]*3+1".countUntil!"a==1"()))
    .reduce!"a[1] < b[1] ? b : a"[0];
}


// メモリ食い過ぎて死ぬ
//pragma(msg, solve());


void main()
{
    writeln(solve());
}
