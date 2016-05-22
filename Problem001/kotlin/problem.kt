/**
 * Created by je6bm on 2016/05/22.
 */
fun main(args:Array<String>)
{
    println(
            Array(1000){it}.filter { it%3 ==0 || it%5==0 }.fold(0,{sum,element-> sum+element })
    )
}