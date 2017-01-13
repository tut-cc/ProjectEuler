function fibonacci(n::Integer)::UInt
    if n<2
        1
    else
        mat=[1 1 ;1 0]^(n-1) * [1, 1]
        mat[1] 
    end
end

sumation=0
n=0
fib=fibonacci(n);
while fib < 4000000
    sumation+=ifelse(fib%2==0,fib,0)
    n=n+1
    fib=fibonacci(n)
end
println(sumation)
