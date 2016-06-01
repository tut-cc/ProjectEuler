package main

import (
	"fmt"
)

func main() {
	for i := 1; i < 1000; i++ {
		for j := 1; j < 1000; j++ {
			for k := 1; i+j > k; k++ {
				if i+j+k == 1000 {
					if i*i+j*j == k*k {
						fmt.Println(i * j * k)
						return
					}
				}
			}
		}
	}
}
