import std.algorithm, std.range;

// コンパイル時に解く場合
pragma(msg, iota(1, 1000).filter!"(!(a%3) || !(a%5))".reduce!"a + b");

void main()
{
    import std.stdio;

    // 実行時にC言語っぽく解く場合
    uint sum;
    foreach(uint i; 1 .. 1000){
        if(i % 3 == 0 || i % 5 == 0)
            sum += i;
    }

    writeln(sum);
}