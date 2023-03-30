package main_test

import (
	"testing"

	. "github.com/stretchr/testify/require"
)

func TestAddition(t *testing.T) {
	got := 2 + 2
	expected := 4

	Equal(t, expected, got)
}

func TestSubtraction(t *testing.T) {
	got := 10 - 5
	expected := 5

	Equal(t, expected, got)
}
