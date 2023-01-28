package maps

import (
	"fmt"

	"golang.org/x/exp/maps"
)

func placeHolderMapsV2() {
	var m map[string][]string
	fmt.Println(m)

	m = map[string][]string{
		"coffee": []string{"Coffee", "Espresso", "Cappicino"},
		"tea":    {"Hot Tea", "Chai Tea", "Chai Latte"},
	}
	fmt.Println(m)
	fmt.Println(m["coffee"][0])

	m["other"] = []string{"Hot Chocolate"}
	fmt.Println(m)

	delete(m, "tea")
	v, ok := m["tea"]
	fmt.Println(m)
	fmt.Println(v, ok)

	m2 := m
	m2["coffee"] = []string{"Coffee"}
	m["tea"] = []string{"Hot Tea"}
	fmt.Println(m, m2)

	m3 := maps.Clone(m)
	m3["m3"] = []string{"m3"}

	fmt.Println(m, m3)
}

// Maps are reference types
func placeHolderMaps() {
	var m map[string]int
	fmt.Println(m)

	m = map[string]int{"foo": 1, "bar": 2}
	v, ok := m["foo"]
	fmt.Println(m)
	fmt.Println(v, ok)

	delete(m, "foo")
	v, ok = m["foo"]
	fmt.Println(m)
	fmt.Println(v, ok)

	m["baz"] = 418
	fmt.Println(m)

	m2 := m
	m["m1"], m2["m2"] = 1, 2
	fmt.Println(m, m2)
}
