# play with digits

def dig_pow(n, p):
    num = str(n)
    total = sum([int(num[i]) ** (p + i)
            for i in range(len(num))])
    return total / n if (total % n) == 0 else -1

# upside down numbers

REVERSED={'1':'1','6':'9','9':'6','8':'8','0':'0'}

def solve(a, b):
    return sum(1 if is_reversible(n) else 0
           for n in range(a,b))

def is_reversible(n):
    try:
        # for each number between a & b, if n = n reversed, then add 1 to count
        # if a digit can't be reversed, it won't have a key in the dict & will throw an error
        return n == int(''.join(REVERSED[i]
              for i in str(n)[::-1]))
    except:
        return False

# Mexican Wave

def wave(s):
    result = []
    letters = list(s)
    for i, char in enumerate(letters):
        letters[i] = char.upper()
        result.append(''.join(letters))
        letters[i] = char.lower()
    return result
