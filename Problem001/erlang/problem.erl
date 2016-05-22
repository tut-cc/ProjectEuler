-module(problem).
-export([main/0]).

main()->
  Num=numList(999),
  Sum=getSum(Num),
  io:format("~b\n",[Sum]).

numList(0)->[];
numList(N)->[N|numList(N-1)].

getSum(List)->getSum(List,0).
getSum([],Acc)->Acc;
getSum(List,Acc) when hd(List) rem 3 == 0 orelse hd(List) rem 5==0 -> getSum(tl(List),Acc+hd(List));
getSum(List,Acc) -> getSum(tl(List),Acc).
