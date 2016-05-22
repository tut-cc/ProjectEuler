package main

import (
	"fmt"
)

func next(n int) int {
	if n%2 == 0 {
		return n / 2
	} else {
		return n*3 + 1
	}
}

func countLength_m(n int, memo int) int {
	if n == 1 {
		return memo
	} else {
		return countLength_m(next(n), memo+1)
	}
}

func countLength(n int) int {
	return countLength_m(n, 0)
}
func main() {
	max_first := 0
	max_count := 0
	count := 0
	for i := 1; i < 1000000; i++ {
		count = countLength(i)
		if max_count < count {
			max_count = count
			max_first = i
		}
	}
	fmt.Println(max_first)
	fmt.Println(max_count)
}
