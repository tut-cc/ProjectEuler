def fact(n):
    return n * fact(n - 1) if n > 1 else n

print(sum(int(i) for i in str(fact(100))))
