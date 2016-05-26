package main

import (
	"fmt"
)

func isPrime(n int) bool {
	if n < 2 {
		return false
	}
	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	i := 1
	n := 0
	for n < 10001 {
		i++
		if isPrime(i) {
			n++
		}
	}
	fmt.Println(i)
}
