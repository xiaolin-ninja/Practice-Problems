# equal sides of an array

def equal_idx(arr):
    # simple win-fast checks
    if len(arr) < 1 or len(arr) == 2:
        return -1

    if len(arr) == 1:
        return 1

    total = 0

    for num in arr:
        total += num

    for i, num in enumerate(arr):
        total -= num
        if i == 0:
            # initiate left_sum
            left_sum = 0
        else:
            left_sum += arr[i-1]
        if left_sum == total:
            return i
    else:
        return -1


print equal_idx([1000, 200, 2, 50, 1150])