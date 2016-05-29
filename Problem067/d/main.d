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
    sm[0][0] = ns[0][0];

    foreach(i; 1 .. 100)
        foreach(int j; 0 .. i+1)
            sm[i][j] = max(sm[i-1].get(j, 0), sm[i-1].get(j-1, 0))
                     + ns[i][j];

    return sm[99].values.reduce!max;
}


// rdmd -J. main
pragma(msg, import("triangle.txt").solve());


void main()
{
    writeln(readText("triangle.txt").solve());
}
