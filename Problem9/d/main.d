pragma(msg, solve);

int solve()
{
  for (int a = 1; a < 1000; ++a) {
    for (int b = a + 1; b < 1000; ++b) {
      for (int c = b + 1; c < 1000; ++c) {
        if (a*a + b*b == c*c && a + b + c == 1000) {
          return a * b * c;
        }
      }
    }
  }
  return -1;
}

// dmd -c main.d => Error: out of memory

import std.stdio;
void main(){solve.writeln;}

