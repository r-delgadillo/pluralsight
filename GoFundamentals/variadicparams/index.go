package variadicparams

import "fmt"

func placeHolderVariadicParams(names ...string) {
	for i, v := range names {
		fmt.Printf("Index: %v; Name: %s\n", i, v)
	}
}
