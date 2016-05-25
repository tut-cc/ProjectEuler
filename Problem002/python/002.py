fib = [1, 1]

while fib[-1] < 4e6:
    fib.append(fib[-1] + fib[-2])

print(sum(i for i in fib if not (i & 0b1)))
