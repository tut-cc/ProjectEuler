N = 600851475143

def sieve(n):
    l = int(n ** 0.5)
    prime = [True] * l
    for i in range(2,l + 1):
        if prime[i - 2]:
            for j in range(i + i,l + 1,i):
                prime[j - 2] = False
    return [ i + 2 for i, _ in enumerate(prime) if _ ]

print([ i for i in reversed(sieve(N)) if N % i == 0 ][0])
