package slices

import (
	"fmt"

	"golang.org/x/exp/slices"
)

// Slices are reference types
func placeHolderSlices() {
	var s []string
	fmt.Println(s)

	s = []string{"Coffee", "Espresso", "Cappuccino"}
	fmt.Println(s)

	s[1] = "Chai Tea"
	fmt.Println(s)

	s2 := s
	s2[2] = "Chai Latte"
	fmt.Println(s, s2)

	s2 = append(s2, "Hot Choco", "Hot Tea")
	fmt.Println(s, s2)

	s3 := []int{1, 2, 3, 4, 5, 6, 7}
	slices.Delete(s3, 1, 2)
	fmt.Println(s3)
}
