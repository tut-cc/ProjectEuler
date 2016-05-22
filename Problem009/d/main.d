import std.typecons;
import std.range;
import std.array;
import std.algorithm;

auto solve()
{
  return 1.iota(1000).map!(
      a => zip(a.repeat.take(1000 - a) , (a+1).iota(1000)).map!(
        b => zip(
          b[0].repeat.take(1000 - b[1]),
          b[1].repeat.take(1000 - b[1]),
          (b[1]+1).iota(1000)
          ).map!(
            c => tuple(c[0]*c[0] + c[1]*c[1], c[2]*c[2], c[0]+c[1]+c[2], c[0]*c[1]*c[2])
          ).filter!(t => t[0] == t[1])
          .filter!(t => t[2] == 1000)
          .map!(r => r[3])
        ).filter!(r => !r.empty)
      ).filter!(r => !r.empty);
}

// pragma(msg, solve)
// dmd -c main.d => Error: out of memory

// dmd -O -release -inline main.d
import std.stdio;
void main(){
  solve.writeln;
  /+ 死ぬ
  10.iota.map!(
      a=>10.iota.map!(
        b=>10.iota.map!(
          c => tuple(a, b, c)
          )
        )
      ).writeln;
  +/
}

