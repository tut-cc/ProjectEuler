import numpy as np
import math

def u(x):
    ret = [((-1)**i) * (x**i) for i in xrange(11)]
    return sum(ret)

def OP(param, x):
    ret = [(param[i] * (x**i)) for i in xrange(len(param))]
    return sum(ret)

EPS = 0.000001
ans = 0
for k in xrange(1, 20):
    A = np.array([[j**(k-i-1) for i in xrange(k)] for j in xrange(1,k+1)])
    b = np.array([u(i) for i in xrange(1, k+1)])
    #print 'A=', A
    #print 'b=', b
    OP_param = np.linalg.inv(A).dot(b)
    OP_param = [round(i) for i in OP_param]
    #print 'param=', OP_param
    #print 'OP=', OP(OP_param[::-1], k+1)
    #print 'u=', u(k+1)*1.0

    if abs(OP(OP_param[::-1], k+1) - u(k+1)*1.0) < EPS:
        print 'ans =', int(ans)
        break
    else:
        ans += OP(OP_param[::-1], k+1)

