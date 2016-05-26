package main

import (
	"fmt"
	"math/big"
)

func main() {
	x := big.NewInt(0)
	y := big.NewInt(0)
	for i := 1; i < 101; i++ {
		x.Add(x, big.NewInt(int64(i*i)))
		y.Add(y, big.NewInt(int64(i)))
	}
	y.Mul(y, y)
	fmt.Println(x.Sub(y, x))

}
