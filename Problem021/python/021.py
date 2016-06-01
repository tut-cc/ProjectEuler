N = 50000
d = [ 1 ] * (N + 1)
d[0] = d[1] = 0

s = 0

for i in range(2, N + 1):
    for j in range(2, int(i ** 0.5) + 1):
        if i % j == 0:
            d[i] += j
            d[i] += int(i / j) if i / j != j else 0

for i in range(1, int(N / 5) + 1):
    a = d[i]
    b = i
    if a != b and d[a] == b:
        s += a + b
        d[a] = d[b] = 0

print(s)
