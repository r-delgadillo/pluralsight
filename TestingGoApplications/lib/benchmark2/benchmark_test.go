package main

import (
	"strings"
	"testing"
)

var players = `[{"name": "Dubi Gal", "age": 900}, {"name": "jojo", "age": 51}]`

func BenchmarkJsonDecoder(b *testing.B) {
	b.ReportAllocs()
	for n := 0; n < b.N; n++ {
		jsonDecoder(strings.NewReader(players))
	}
}

func BenchmarkReadAll(b *testing.B) {
	b.ReportAllocs()
	for n := 0; n < b.N; n++ {
		readAll(strings.NewReader(players))
	}
}
