package generics

import "fmt"

func GenericsMain() {
	// testScores := []float64{
	// 	87.3,
	// 	105,
	// 	63.5,
	// 	27,
	// }

	// c := clone(testScores)
	// fmt.Println(&testScores[0], &c[0], c)
	a1 := []int{1, 2, 3}
	a2 := []float64{3.14, 6.02}
	a3 := []string{"foo", "bar", "baz"}

	s1 := add(a1)
	s2 := add(a2)
	s3 := add(a3)

	fmt.Printf("Sum of %v: %v \n", a1, s1)
	fmt.Printf("Sum of %v: %v \n", a2, s2)
	fmt.Printf("Sum of %v: %v \n", a3, s3)
}

func clone[V any](s []V) []V {
	result := make([]V, len(s))
	for i, v := range s {
		result[i] = v
	}
	return result
}

func cloneInt[T int | float32 | float64](s []T) []T {
	result := make([]T, len(s))
	for i, v := range s {
		result[i] = v
	}
	return result
}

func cloneMap[K comparable, V any](m map[K]V) map[K]V {
	result := make(map[K]V, len(m))
	for k, v := range m {
		result[k] = v
	}
	return result
}

type addable interface {
	int | float64 | string
}

func add[V addable](s []V) V {
	var result V
	for _, v := range s {
		result += v
	}
	return result
}
