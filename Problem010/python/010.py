# 区間篩を書いて高速化
def segmentsieve(n):
    m = int(n ** 0.5)
    root = int(m ** 0.5)
    p = [ i for i in range(0, m + 1) ]
    for i in range(2, root + 1):
        if p[i]:
            for j in range(i + i, m + 1, i):
                p[j] = 0
    p[0] = p[1] = 0
    p = [ i for i in p if i ]
    lp = [ i for i in range(m, n + 1) ]
    for i in range(len(lp)):
        for j in p:
            if not lp[i] % j:
                lp[i] = 0
                break
    lp = [ i for i in lp if i]
    return p + lp

print(sum(segmentsieve(2000000)))
