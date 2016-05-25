def palindrome(n):
    s = str(n)
    for i in range(int(len(s) / 2)):
        if s[i] != s[-i - 1]:
            break
    else:
        return True
    return False

p = [i * j for i in range(999, 99, -1) for j in range(i, 99, -1) if palindrome(i * j)]
print(sorted(p, reverse = True)[0])
