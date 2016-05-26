package main

import (
	"fmt"
)

func gcd(m, n int) int {
	if n == 0 {
		return m
	}
	return gcd(n, m%n)
}

func main() {
	sum := 1
	for i := 1; i < 21; i++ {
		sum = (sum * i) / gcd(sum, i)
	}
	fmt.Println(sum)
}
