N = 1000
dig = []

for i in range(N, 2, -1):
    f = [ False ] * (i + 1)
    l = []
    a = 1
    while int(a / i) == 0:
        a *= 10
    while a % i != 0:
        c = 0
        while a - i > 0:
            a -= i
            c += 1
        mod = a
        if f[mod]:
            idx = l.index(f[mod])
            dig.append((i, len(l[idx + 1:])))
            break
        f[mod] = c
        l.append(c)
        a *= 10

print(sorted(dig, key = lambda x : x[-1], reverse = True)[0][0])
