package structs

import "fmt"

func placeHolderStructs() {
	type MyStruct struct {
		name string
		id   int
	}
	var s struct {
		name string
		id   int
	}
	var s2 MyStruct = MyStruct{
		name: "Roge",
		id:   2,
	}

	s.name = "Arthur"
	s.id = 1
	fmt.Println(s, s2)

	// Not a reference type
	s3 := s2
	s3.name = "NewName"
	fmt.Println(s2, s3)
}
