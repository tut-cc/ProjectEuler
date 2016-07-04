-module(problem).
-export([main/0]).

main() -> 
getFactor(600851475143).


getFactor(N)->getFactor(2,N).
getFactor(D,N) when N >1  -> 
if N rem D ==0 -> getFactor(D,N div D);
true -> getFactor(D+1,N)
end;
getFactor(D,_) -> D. 