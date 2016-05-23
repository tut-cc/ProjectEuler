package main

import (
	"fmt"
	"strconv"
)

func isPalindrome(n int) bool {
	num := strconv.Itoa(n)
	for i := 0; i < len(num)/2; i++ {
		if num[i] != num[len(num)-i-1] {
			return false
		}
	}
	return true
}

func main() {

	max := 0
	for i := 100; i < 1000; i++ {
		for j := 100; j < 1000; j++ {
			if isPalindrome(i * j) {
				if max < i*j {
					max = i * j
				}
			}
		}
	}
	fmt.Println(max)
}
