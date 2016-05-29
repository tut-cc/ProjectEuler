import std.stdio;
import std.string;
import std.algorithm;
import std.range;
import std.conv;
import std.file;


int solve(string text)
{
    int[size_t][size_t] values;

    foreach(i, line; text.splitLines){
        foreach(j, n; line.split){
            values[i][j] = n.to!int;
        }
    }

    int g(size_t i, size_t j){ return values.get(i, null).get(j, 0); }

    int m;
    foreach(i; 0 .. 20) foreach(j; 0 .. 20)
    {
        m = m.max(g(i, j) *
                max(g(i, j+1) * g(i, j+2) * g(i, j+3),
                    g(i+1, j) * g(i+2, j) * g(i+3, j),
                    g(i+1, j+1) * g(i+2, j+2) * g(i+3, j+3),
                    g(i+1, j-1) * g(i+2, j-2) * g(i+3, j-3)
                )
            );
    }

    return m;
}


// rdmd -J. main
//pragma(msg, import("numbers.txt").solve());


void main()
{
    writeln(readText("numbers.txt").solve());
}
