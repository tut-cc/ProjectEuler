N = int(1e6)
seq = [None] * N
for a in range(1, N + 1):
    c = 1
    n = a
    while n != 1:
        if n <= N and seq[n - 1]:
            seq[a - 1] = c + seq[n - 1] - 1
            break
        if n & 1:
            n = 3 * n + 1
        else:
            n = int(n / 2)
        c += 1
    else:
        seq[a - 1] = c

print(max(((i + 1, a) for i, a in enumerate(seq)), key = lambda x : x[-1])[0])
