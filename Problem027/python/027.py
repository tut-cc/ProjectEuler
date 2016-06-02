import heapq

N = 1000
p = [ i for i in range(0, N) ]
ans = (0, 0)

q = lambda n, a, b : n ** 2 + a * n + b

def infn():
    i = 0
    while True:
        yield i
        i += 1

for i in range(-N, N + 1):
    for j in range(0, N + 1):
        c = 0
        for n in infn():
            a = q(n, i, j)
            if a > 0 and all(a % k for k in range(2, int(a ** 0.5) + 1)):
                c += 1
            else:
                ans = max(ans, (i * j, c), key = lambda x : x[-1])
                break

print(ans[0])
