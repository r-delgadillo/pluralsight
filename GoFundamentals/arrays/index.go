package arrays

import "fmt"

func placeHolderArrays() {
	var arr [3]string
	fmt.Println(arr)

	arr = [3]string{}
	fmt.Println(arr)

	arr = [3]string{"1", "2", "3"}
	fmt.Println(arr)

	arr2 := arr
	arr2[2] = "Espresso"
	fmt.Println(arr, arr2)
}
