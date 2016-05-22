package main

import (
	"fmt"
	"github.com/kimitoboku/go-PollarRho"
	"sort"
)

func main() {
	num := 600851475143
	list := pollarrho.Factor(num)
	sort.Ints(list)
	fmt.Println(list[len(list)-1])
}
