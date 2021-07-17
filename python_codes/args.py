def is_even(a):
    return a % 2 == 0


li = [1, 2, 3, 4, 5, 5, 6, 6, 7]

evens = list(map(is_even, li))

print(evens)
