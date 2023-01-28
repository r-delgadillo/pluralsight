// Package comments provides functionality for managing
// users and their access rights
package comments

import "fmt"

type User struct{}

var i int // Not available to public API (no comment required)

var currentUsers []*User

// MaxUsers controls how many users the system can handle at once.
const MaxUsers = 100

func foo() {
	fmt.Println(i)
}

func GetById(id int) (*User, bool) { return nil, false }
