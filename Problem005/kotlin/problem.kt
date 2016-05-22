import java.lang.Math;
fun main(args:Array<String>)
{
    var primeList=arrayListOf<Int>(2)
    val max=20
    for (i in 3..max)
    {
        if(primeList.all { i % it!=0 }) primeList.add(i)
    }
    val primeLength=primeList.size
    var exponetial=Array<Int>(primeLength){0}
    for (i in 1..max)
    {
        for (p in primeList)
        {
            if(i % p==0) {
                exponetial[primeList.indexOf(p)]=((Math.log(i.toDouble() )/Math.log(p.toDouble()) +0.5 ).toInt())
                break
            }
        }
    }
    println(
            Array<Int>(primeLength){it}.fold(1,
                    {
                        product,index-> product*((Math.pow(primeList.get(index).toDouble() , exponetial[index].toDouble())+0.5).toInt())
                    }))
}