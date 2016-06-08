fun main(args:Array<String>)
{
    println(Fibonacci(4000000).filter { it % 2==0 }.fold(0,{f,sum->sum+f}))
}
fun Fibonacci(n:Int):List<Int>
{
    var fibonacci=mutableListOf(1,1)
    var i = 2
    while (fibonacci.get(fibonacci.size-1) < n)
    {
        fibonacci.add(fibonacci.get(i-1)+fibonacci.get(i-2))
        i++
    }
    return fibonacci
}