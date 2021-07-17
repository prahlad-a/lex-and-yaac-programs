import math
import os
import random
import re
import sys

# Complete the hourglassSum function below.


def hourglassSum(arr):
    print(arr)
    return len(arr)


if __name__ == '__main__':

    arr = []

    for _ in range(3):
        arr.append(list(map(int, input().rstrip().split())))

    result = hourglassSum(arr)

    print(result)
