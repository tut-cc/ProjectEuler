fun main(args:Array<String>)
{
    val nums=Array<Int>(100){it+1}
    var sub=0
    for (i in nums)
    {
        sub+=nums.fold(0,{sum,n->
            sum+ when(n)
            {
                i ->0
                else ->i*n
            }
        })
    }
    println(sub)
}