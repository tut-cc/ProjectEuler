sq = [ 1 ]
for i in range(1, 1000):
    sq.append(sq[-1] + i * 2 + 1)

print([ (i + 1) * (j + 1) * (k + 1) for i in range(0, 1000) for j in range(i + 1, 1000 - i) for k in range(j + 1, 1000 - j) if sq[i] + sq[j] == sq[k] and i + j + k + 3 == 1000 ][0])
