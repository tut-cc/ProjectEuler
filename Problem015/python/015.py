N = 21
p = [ [None] * N for i in range(N) ]

p[0][0] = 1

for i in range(N):
    for j in range(N):
        if i or j:
            c = 0
            c += p[i - 1][j] if i > 0 else 0
            c += p[i][j - 1] if j > 0 else 0
            p[i][j] = c

print(p[-1][-1])
