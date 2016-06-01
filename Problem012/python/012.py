import functools

def triangle_num():
    i = [ 1 ]
    while True:
        yield sum(i)
        i.append(i[-1] + 1)

class Primer(object):
    def __init__(self, ):
        self.p = [ 2 ]
        pass

    def sieve(self, n):
        cand = [ i for i in range(n, 2 * n + 1) ]
        for i in range(len(cand)):
            for d in self.p:
                if cand[i] % d == 0:
                    cand[i] = 0
                    break
        self.p.extend([ i for i in cand if i ])

    def factorize(self, n):
        factor = [ (1, 0) ]
        if len(self.p) and self.p[-1] < int(n ** 0.5):
            self.sieve(self.p[-1])
        for d in self.p:
            if n % d == 0:
                c = 0
                while n % d == 0:
                    c += 1
                    n /= d
                factor.append((n, c))
        return factor

if __name__ == '__main__':
    import functools
    p = Primer()
    for a in triangle_num():
        c = functools.reduce(lambda a, b : a * b, ( i + 1 for n, i in p.factorize(a) ))
        if 500 < c:
            print(a)
            break
