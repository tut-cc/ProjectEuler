import functools

def gcd(a, b):
    if not b:
        return a
    else:
        a, b = b, a % b
        return gcd(a, b)

def lcm(a, b):
    return a / gcd(a, b) * b

print(functools.reduce(lcm, range(1,21)))
