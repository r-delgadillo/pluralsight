package defferedfuncs

import "fmt"

func placeHolderDeferredFunctions() {
	// Regular function  : Invocation -> Execute statements -> Exit -> 							   -> Return focus to caller
	// Deferred functions: Invocation -> Execute statements -> Exit -> Execute deferred statements -> Return focus to caller

	fmt.Println("main 1")
	defer fmt.Println("defer 1")

	fmt.Println("main 2")
	defer fmt.Println("defer 2")

	// Prints: "main 1", "main 2", "defer 2", "defer 1"

	// Deferred functions are typically used to close connections to a DB.
	// Deferred functions execute in the reverse order they are called.
	// For example,
	// 		1. Open SQL connection
	//      2. defer SQL close connection
	//      3. Query SQL
	//      4. defer SQL query resources
	//      5. Execute deferred functions:
	// 			5.1. Close SQL query resources
	//          5.2. Close SQL connection
}
