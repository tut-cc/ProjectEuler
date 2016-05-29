// rdmd -J. main
import std.stdio;
import std.algorithm;
import std.range;
import std.file;
import std.string;

ulong solve(string text)
{
    return
    text.split(",").map!"a[1..$-1]".array().sort()
    .zip(recurrence!"a[n-1]+1"(1)).map!(a => a[1] * a[0].map!"a-'A'+1".sum).sum;
}


// rdmd -J. main
//pragma(msg, import("names.txt").solve());


void main()
{
    writeln(readText("names.txt").solve());
}