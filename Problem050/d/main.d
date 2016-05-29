import std.algorithm,
       std.math,
       std.range,
       std.stdio;

enum N = 1_000_000;

uint solve()
{
    // なんちゃらのふるい
    bool[] ps = new bool[N*2];
    ps[] = true;

    ps[0] = false;
    ps[1] = false;
    foreach(i; 2 .. cast(uint)sqrt(cast(real)N*2)+1)
        foreach(j; iota(i*2, N*2, i))
            ps[j] = false;

    ulong max, cnt;
    auto plist = iota(N).filter!(a => ps[a]).array();

  Lplist:
    foreach(p; plist){
        size_t s = 0, e = 1;
        ulong sum = plist[0];

        // しゃくとり法
        while(sum != p){
            if(sum < p){
                ++e;
                if(e >= N) continue Lplist;
                sum += plist[e-1];
            }
            if(sum > p){
                sum -= plist[s];
                ++s;
            }
        }

        auto len = e - s;
        if(cnt < len){
            cnt = len;
            max = p;
        }
    }

    return cast(uint)max;
}


// これはきつい
//pragma(msg, solve());


void main()
{
    writeln(solve());
}