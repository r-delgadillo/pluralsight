package errormanagement

import "fmt"

func PlaceHolderPanicAndRecover() {
	divide := func(dividend, divisor int) int {
		// Similar to a `catch` block. It's called after the Exit of the function
		panicRecovery := func() {
			if err := recover(); err != nil {
				fmt.Println(err)
			}
		}
		defer panicRecovery()

		return dividend / divisor
	}

	dividend, divisor := 10, 5
	fmt.Printf("%v divided by %v is %v\n", dividend, divisor, divide(dividend, divisor))
	dividend, divisor = 10, 0
	fmt.Printf("%v divided by %v is %v\n", dividend, divisor, divide(dividend, divisor))
}
