def sumDivisibleByN(l: list[int], n: int) -> int:
    # guard clause
    if len(l) == 0:
        return 0

    total = 0
    for val in l:
        if val % n == 0:
            total += val

    return total


def main() -> None:
    print(sumDivisibleByN([10, 20, 30, 40, 50], 10))
    print(sumDivisibleByN([2, 12, 15, 21, 25, 37], 5))
    print(sumDivisibleByN([], 10))
    print(sumDivisibleByN([11, 12, 13, 14, 15], 10))
    print(sumDivisibleByN([-10, 20, -30, 40, -50], 10))


if __name__ == '__main__':
    main()

# sumDivisibleByN([10, 20, 30, 40, 50], 10) => 150
