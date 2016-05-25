import std.stdio;
import std.algorithm;
import std.range;


uint solve()
{
    return recurrence!"a[n-1]+1"(2).filter!isPrime.drop(10_000).front;
}


pragma(msg, solve());


void main()
{
    writeln(solve());
}


pure bool isPrime(T)(T src)
{
    import std.math;

    if(src <= 1)return false;
    else if(src < 4)return true;
    else if(!(src&1))return false;
    else if(((src+1)%6) && ((src-1)%6))return false;
    
    T root = cast(T)sqrt(cast(real)src) + 1;
    
    for(T i = 5; i < root; i += 6)
        if(!((src%i) && ((src)%(i+2))))
            return false;

    return true;
}
