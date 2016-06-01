def fib():
    fibs = [ ]
    while True:
        a = 1 if len(fibs) < 2 else fibs[-1] + fibs[-2]
        yield a
        fibs.append(a)

for idx, n in enumerate(fib()):
    if len(str(n)) == 1000:
        print(idx + 1)
        break
