-module(problem).
-export([main/0]).

main()->
Fib=fibonacci(4000000),
Even=lists:filter(fun(T) -> isOdd(T) end,Fib),
Sum=fun(T,Acc) -> Acc+T end,
lists:foldl(Sum,0,Even).

fibonacci(N)->fibonacci(N,[1|[1]]).
fibonacci(N,List) when hd(List) > N -> List;
fibonacci(N,List)-> 
 [H|T]=List,
  S=hd(T),
  fibonacci(N,[H+S|List]).

isOdd(X) when X rem 2==0 -> true;
isOdd(_) -> false.