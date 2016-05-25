import std.algorithm, std.range;

// コンパイル時に解く場合
pragma(msg, recurrence!"a[n-2] + a[n-1]*4"(2, 8).until!"a >= b"(4_000_000).reduce!"a+b");

void main()
{
    import std.stdio;

    // 実行時にC言語っぽく(?)解く場合
    uint sum;
    uint fib1 = 1, fib2 = 2;
    while(fib1 <= 4_000_000){
        if(fib1 % 2 == 0)
            sum += fib1;

        // 数列の更新
        auto next = fib1 + fib2;
        fib1 = fib2;
        fib2 = next;
    }

    writeln(sum);
}
