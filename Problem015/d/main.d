import std.stdio;
import std.algorithm;

ulong solve()
{
    ulong[int][int] cnt;
    cnt[0][0] = 1;

    foreach(int s; 1 .. 41){
        foreach(int i; 0 .. max(s+1, 21)){
            int j = s - i;

            if(i > 20 || j > 20 || i < 0 || j < 0) continue;
            cnt[i][j] = cnt.get(i-1, null).get(j, 0) + cnt.get(i, null).get(j-1, 0);
        }
    }

    return cnt[20][20];
}


pragma(msg, solve());


void main()
{
    writeln(solve);
}