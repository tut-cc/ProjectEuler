import std.algorithm,
       std.array,
       std.conv,
       std.file,
       std.range,
       std.stdio,
       std.string;

uint solve(string txt)
{
    auto ns = txt.splitLines.map!(a => a.split.map!(to!uint).array).array;

    uint[int][int] sm;
    sm[0][0] = 75;

    foreach(i; 1 .. 15)
        foreach(int j; 0 .. i+1)
            sm[i][j] = max(sm[i-1].get(j, 0), sm[i-1].get(j-1, 0))
                     + ns[i][j];

    return sm[14].values.reduce!max;
}


pragma(msg, import("numbers.txt").solve());


void main()
{
    writeln(readText("numbers.txt").solve());
}
