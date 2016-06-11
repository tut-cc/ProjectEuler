import math

def y(x):
    return int((math.sqrt(8*x*x - 8*x + 1) - 2*x + 1) / 2)
    
ansx = [3, 15]
i = 2
while(True):
    x = 6*ansx[i-1] - ansx[i-2] - 2
    if (x + y(x) > 1e12):
        print x
        break
    ansx.append(x)
    i += 1

'''
xlist = [i+1 for i in xrange(10000)]
for x in xlist:
    if y(x).is_integer():
        print x, int(y(x))
'''
