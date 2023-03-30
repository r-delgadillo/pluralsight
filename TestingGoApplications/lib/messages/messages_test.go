package messages

import (
	"testing"

	. "github.com/stretchr/testify/require"
)

func TestGreet(t *testing.T) {
	got := Greet("Gopher")
	expect := "Hello, Gopher\n"
	Equal(t, expect, got)
}

func TestDepart(t *testing.T) {
	got := depart("Gopher")
	expect := "Goodbye, Gopher\n"
	Equal(t, expect, got)
}

func TestGreetTableDriven(t *testing.T) {
	scenarios := []struct {
		input  string
		expect string
	}{
		{input: "Gopher", expect: "Hello, Gopher\n"},
		{input: "", expect: "Hello, \n"},
	}

	for _, v := range scenarios {
		got := Greet(v.input)

		Equal(t, v.expect, got)
	}
}

// Displaying immediate for non-immediate failures
func TestFailureTypes(t *testing.T) {
	t.Skip()
	t.Error("Error signals a failed test, but doesn't stop the rest of the test from executing")
	t.Fatal("Fatal will fail the test and stop its execution")
	// Does not execute since `t.Fatal` is immediate failure
	t.Error("This will never print since it is preceeded by an immediate failure")
}
