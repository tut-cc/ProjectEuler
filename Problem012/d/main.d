import std.algorithm;
import std.range;
import std.array;

bool is_prime(immutable int N) pure nothrow @safe
{
    bool flag = N > 2 ? N % 2 != 0 : N == 2;
    for (int i = 3; flag && i * i <= N; i += 2) {
        flag &= N % i != 0;
    }
    return flag;
}

auto divs(immutable long N) pure nothrow @safe
{
    auto primes = recurrence!((a, n) => n)(0)
        .filter!(a => a.is_prime); // ココ最高。無限range。
    long n = N;
    int sum = 1;
    foreach (p; primes) { // ココ最高。無限に素数が湧いてくる。
        if (p*p > N) {
            break;
        }
        int cnt = 0;
        while (n % p == 0) {
            n /= p;
            ++cnt;
        }
        sum *= cnt + 1;
    }
    return sum;
}

void main()
{
    import std.stdio;
    int ans = 0;
    for (long i = 1; ;++i) {
        long v = ((1 + i) * i)/2;
        if (ans < v.divs) {
            ans = v.divs;
            stderr.writeln("(", i, ") ", v , " ... ", ans);
            if (ans >= 500) {
                break;
            }
        }
    }
    
    // 最the高
    recurrence!((a, n) => a[n-1]+n+1L)(1L)
        .filter!(a => a.divs >= 500)
        .front.writeln;
}

