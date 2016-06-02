package main

import (
	"fmt"
)

var primes []int

func triNum(n int) int {
	sum := 0
	for i := 1; i < n+1; i++ {
		sum = sum + i
	}
	return sum
}

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

func countDivi(n int) int {
	sum := 1
	num := n
	for i := 0; num > primes[i]*primes[i]; i++ {
		cnt := 0
		for n%primes[i] == 0 {
			n /= primes[i]
			cnt++
		}
		sum = sum * (cnt + 1)
	}
	return sum
}

func main() {
	primes = make([]int, 10000)
	n := 0
	for i := 2; n < 10000; i++ {
		if isPrime(i) {
			primes[n] = i
			n++
		}
	}

	for i := 1; ; i++ {
		triNnumber := triNum(i)
		cnt := countDivi(triNnumber)
		if cnt > 500 {
			fmt.Print(triNnumber)
			fmt.Print(" ")
			fmt.Println(cnt)
			return
		}
	}
}
