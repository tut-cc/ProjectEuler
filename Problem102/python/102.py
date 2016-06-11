def cross_z(x, y):
    return x[0]*y[1] - x[1]*y[0]

if __name__ == '__main__':
    ans = 0
    for line in open("../p102_triangles.txt", "r"):
        cor = [float(x) for x in line.split(',')]
        a = cor[0:2]
        b = cor[2:4]
        c = cor[4:6]
        if (cross_z(a, b) > 0 and cross_z(b, c) > 0 and cross_z(c, a) > 0) or (cross_z(a, b) < 0 and cross_z(b, c) < 0 and cross_z(c, a) < 0) :
            ans += 1

    print ans

    

    

