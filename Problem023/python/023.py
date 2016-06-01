N = 28124

abundants = [ False ] * N
abunsum = [ False ] * N

for i in range(N):
    a = i
    divisor = [ 1 ]
    for j in range(2, int(a ** 0.5) + 1):
        if a % j == 0:
            divisor.append(j)
            if not a / j in divisor:
                divisor.append(a / j)
    abundants[i] = sum(divisor) > i

print(sum(i for i in range(1, N) if all(not abundants[i - j] or not abundants[j] for j in range(12, i))))
