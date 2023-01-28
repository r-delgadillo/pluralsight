package gotostatments

import "fmt"

func placeHolderGoToStatements() {
	i := 10
	if i < 15 {
		goto jump1
	}
	fmt.Printf("Doesn't execute when i < 15; i = %v\n", i)
jump1:
	j := 42
	for ; i < 15; i++ {
		fmt.Println(j)
	}
}
