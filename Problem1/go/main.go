package main

import (
	"fmt"
)

func main() {
	sum := 0
	for i := 1; i < 1000; i++ {
		if i%3 == 0 {
			sum += i
			continue
		}
		if i%5 == 0 {
			sum += i
			continue
		}
	}
	fmt.Println(sum)
}
