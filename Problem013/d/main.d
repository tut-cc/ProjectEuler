import std.algorithm,
       std.conv,
       std.file,
       std.stdio,
       std.string;


string solve(string[] numbers)
{
    return numbers.map!"a[0 .. 12]".map!(to!ulong).sum().to!string[0 .. 10];
}


// rdmd -J. main
//pragma(msg, import("numbers.txt").splitLines.solve());


void main()
{
    writeln(readText("numbers.txt").splitLines.solve());
}
