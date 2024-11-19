package test

import "core:fmt"
print :: fmt.println

main :: proc() {

	print(sumDivisibleByN([]int{10, 20, 30, 40, 50}, 10))
	print(sumDivisibleByN([]int{2, 12, 15, 21, 25, 37}, 5))
	print(sumDivisibleByN([]int{}, 10))
	print(sumDivisibleByN([]int{11, 12, 13, 14, 15}, 10))
	print(sumDivisibleByN([]int{-10, 20, -30, 40, -50}, 10))
	// OUTPUT:
	// 150
	// 40
	// 0
	// 0
	// -30
}

sumDivisibleByN :: proc(l: []int, n: int) -> int {
	// guard clause
	if len(l) == 0 {
		return 0
	}

	total := 0
	for val in l {
		if val % n == 0 {
			total += val
		}
	}

	return total
}
