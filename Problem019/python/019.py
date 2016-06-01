days = [ 30 if i in [2, 4, 6, 9, 11] else 31 for i in range(1, 13) ]
days[1] = 28

t = sum(days)
c = 0

def is_leap_year(n):
    return n % 400 == 0 or (n % 4 == 0 and n % 100 != 0)

for y in range(1901, 2001):
    leap = is_leap_year(y)
    days[1] = 29 if leap else 28
    for m, d in enumerate(days):
        if t % 7 == 5:
            print("%dy%dm" % (y, m + 1))
            c += 1
        t += d

print(c)
