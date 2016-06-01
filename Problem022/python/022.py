f = open("p022_names.txt", "r")
names = [ a[1:-1] for a in f.read().strip().split(",") ]

scores = [ (idx + 1) * sum((ord(c) - ord("A") + 1) for c in a) for idx, a in enumerate(sorted(names)) ]


print(sum(scores))
