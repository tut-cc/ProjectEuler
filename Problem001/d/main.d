import std.algorithm, std.range;

pragma(msg, iota(1, 1000).filter!"(!(a%3) || !(a%5))".reduce!"a + b");

void main(){}