import itertools

base = "0123456789"

print("".join([a for a in itertools.permutations(base)][1000000 - 1]))
