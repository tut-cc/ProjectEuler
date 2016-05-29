import std.stdio;
import std.typecons;

uint solve()
{
    int[] memo = new int[1_000_000];
    memo[] = -1;
    memo[1] = 0;
    memo[2] = 1;

    foreach(ulong n; 3 .. 1_000_000){
        ulong[] stack;
        immutable o = n;

        uint cnt;
        while(n >= 1_000_000 || memo[n] == -1){
            stack ~= n;

            if(n % 2 == 0)
                n /= 2;
            else
                n = n * 3 + 1;
        }

        auto c = memo[n];
        foreach(i, s; stack){
            if(s < 1_000_000)
                memo[s] = c + cast(uint)(stack.length - i);
        }
    }

    uint m, c;
    foreach(uint n; 1 .. 1_000_000){
        auto v = memo[n];
        if(c < v){
            m = n;
            c = v;
        }
    }

    return m;
}


pragma(msg, solve());


void main()
{
    writeln(solve());
}
