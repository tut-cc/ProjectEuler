package main

import (
	"fmt"
)

var memo []int

func fib(n int) int {
	if n < 2 {
		return memo[n]
	} else {
		memo[n] = memo[n-1] + memo[n-2]
		return memo[n]
	}
}
func main() {
	memo = make([]int, 1000, 1000)
	memo[0] = 0
	memo[1] = 1
	fibn := 1
	sum := 0

	for i := 0; fibn <= 4000000; i++ {
		fibn = fib(i)
		if fibn%2 == 0 {
			sum += fibn
		}
	}
	fmt.Println(sum)
}
