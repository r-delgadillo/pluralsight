package main

import (
	"fmt"
	"net/http"

	"github.com/r-delgadillo/pluralsight/GoGettingStarted/controllers"
)

const (
	first = iota + 1
	second
	third
)

func main() {
	controllers.RegisterControllers()
	http.ListenAndServe(":3000", nil)

	port := 3000
	port, err := startWebServer(port, 2)
	fmt.Println(port, err)

}

func placeHolderForLoop() {
	i := 0
	for i < 5 {
		fmt.Println(i)
		if i == 3 {
			break
			// continue
		}
		i++
	}
}

func placeHolderForLoop2() {
	for i := 0; i < 5; i++ {
		fmt.Println(i)
	}
}

func placeHolderForLoop3() {
	for {
		fmt.Println("Forever loop")
	}
}

func placeHolderForLoop4() {
	slice := []int{1, 2, 3}
	for i := 0; i < len(slice); i++ {
		fmt.Println(slice[i])
	}

	for i, v := range slice {
		fmt.Println(i, v)
	}
}

func placeHolderForLoop5() {
	wellKnownPorts := map[string]int{"http": 80, "https": 443}
	for _, v := range wellKnownPorts {
		fmt.Println(v)
	}
}

func startWebServer(port, numberOfRetries int) (int, error) {
	fmt.Println("Starting server...")
	fmt.Println("Server started on port", port)
	fmt.Println("Number of retries", numberOfRetries)
	return port, nil
}

func placeHolderStructs() {
	type user struct {
		ID        int
		FirstName string
		LastName  string
	}

	var u user
	u.ID = 1
	u.FirstName = "Rogelio"
	u.LastName = "Delgadillo"
	fmt.Println(u, u.FirstName)

	u2 := user{
		ID:        2,
		FirstName: "Ro",
		LastName:  "Deli",
	}
	fmt.Println(u2)
}

func placeHolderMaps() {
	m := map[string]int{"foo": 42}
	fmt.Println(m, m["foo"])

	m["foo"] = 27
	fmt.Println(m, m["foo"])

	delete(m, "foo")
	fmt.Println(m, m["foo"])
}

func placeHolderSlices() {
	slice := []int{1, 2, 3}
	fmt.Println(slice)

	slice = append(slice, 4, 5, 6)
	fmt.Println(slice)

	s2 := slice[1:]
	s3 := slice[:2]
	s4 := slice[1:2]
	fmt.Println(s2, s3, s4)
}

func placeHolderArrayAndSlices() {
	var arr [3]int
	arr[0] = 1
	arr[1] = 2
	arr[2] = 3
	fmt.Println(arr, arr[1])

	fArr := [3]int{1, 2, 3}
	fmt.Println(fArr, fArr[1])

	slice := fArr[:]
	fmt.Println(fArr, slice)
	fArr[0] = 10
	slice[1] = 100
	fmt.Println(fArr, slice)
}

func placeHolderPointers() {
	var firstName *string = new(string)
	*firstName = "Rogelio"
	fmt.Println(*firstName)

	friendName := "Arthur"
	ptr := &friendName
	fmt.Println(ptr, &ptr, *ptr)

	friendName = "foo"
	fmt.Println(ptr, &ptr, *ptr)
}

func placeHolderConst() {
	fmt.Println(first, second, third)

	var i float32
	i = 2.3
	fmt.Println(i)

	var k float32 = 2.3
	fmt.Println(k)

	j := 2.3
	fmt.Println(j)

	c := complex(1, 1)
	fmt.Println(c)

	r, im := real(c), imag(c)
	fmt.Println(r, im)

	const foo int = 1
	fmt.Println(foo + 1)
	fmt.Println(float32(foo) + 1.2)
}

func placeHolderSwitchStatements() {
	type HTTPRequest struct {
		Method string
	}
	request := HTTPRequest{
		Method: "",
	}
	switch request.Method {
	case "PUT":
		fmt.Println("PUT request")
	case "GET":
		fmt.Println("GET request")
	case "POST":
		fmt.Println("POST request")
	case "DELETE":
		fmt.Println("DELETE request")
	case "":
		fmt.Println("Empty request method")
		fallthrough
	default:
		fmt.Println("Unsupported scenario")
	}
}
