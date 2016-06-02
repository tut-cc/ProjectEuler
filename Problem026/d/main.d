import std.range;
import std.algorithm;
pragma(msg, 2.iota(1000).map!reciprocal.reduce!max);

auto reciprocal(int d)
{
  import std.typecons;
  import std.conv;
  int[int][int] dat;
  int num = 10;
  int dept = 1;
  int len = 0;
  string rep = "0.";
  for (;;) {
    int e = num / d;
    num -= e * d;
    if (!num) {
      break;
    }
    if (e in dat && num in dat[e] && dat[e][num]) {
      rep = rep[0..dat[e][num]] ~ "(" ~ rep[dat[e][num]..$] ~ ")";
      len = dept - dat[e][num] + 1;
      break;
    }
    rep ~= e.to!string;
    dat[e][num] = ++dept;
    num *= 10;
  }
  return tuple(len, rep, d);
}

// dmd -c main.d

