import std.algorithm,
       std.range;
import std.stdio;

size_t solve(){
    //one,two,three,four,five,six,seven,eight,nine
    immutable one = [0,3,3,5,4,4,3,5,5,4];
    //ten,eleven,twelve,thirteen,fourteen,fifteen,sixteen,seventeen,eighteen,nineteen
    immutable ten = [3,6,6,8,8,7,7,9,8,8];
    //ten,twenty,thirty,forty,fifty,sixty,seventy,eighty,ninety
    immutable x10 = [0,3,6,6,5,5,5,7,6,6];


    size_t count(in size_t[] d)
    {
        //writeln(d);

        if(d.length == 3){
            if(d[0] != 0 || d[1] != 0)
                return one[d[2]] + "hundred".length + "and".length + count(d[0 .. $-1]);
            else
                return one[d[2]] + "hundred".length;
        }else if(d.length == 2){
            if(d[1] == 1)
                return ten[d[0]];
            else
                return x10[d[1]] + one[d[0]];
        }else
            return one[d[0]];
    }


    return iota(1, 1000)
    .map!(a => a.recurrence!"a[n-1]/10".until(0).map!"cast(size_t)a%10".array)
    .map!(a => count(a)).sum()
    + "onethousand".length;
}


pragma(msg, solve());


void main()
{
    writeln(solve());
}
