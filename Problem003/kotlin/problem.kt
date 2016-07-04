
fun main(args:Array<String>)
{
    val N:Long=600851475143
    println(getMaxFactor(N))
}
fun getMaxFactor(n:Long):Long
{
    var factor:Long=2
    var num=n
    while(num>1)
    {
        when (num % factor) {
            0L ->
            {
                num /=factor
            }
            else -> factor++
        }

    }
    return factor
}
