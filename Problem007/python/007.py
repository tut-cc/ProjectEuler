def isprime(p, n):
    for i in p:
        if not n % i:
            return False
    else:
        return True

N = int(1e4)
p = [2, 3]
i = 5

# Pythonでは無限リストが扱いづらい
while len(p) <= N:
    if isprime(p, i):
        p.append(i)
    i += 2

print(p[-1])
