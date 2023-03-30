package benchmarktest

import (
	"crypto/sha1"
	"crypto/sha256"
	"crypto/sha512"
	"testing"
)

func BenchmarkSha1(b *testing.B) {
	data := []byte("Mary had a little lamb")
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sha1.Sum(data)
	}
}

func BenchmarkSha256(b *testing.B) {
	data := []byte("Mary had a little lamb")
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sha256.Sum256(data)
	}
}
func BenchmarkSha512(b *testing.B) {
	data := []byte("Mary had a little lamb")
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		sha512.Sum512(data)
	}
}

func BenchmarkSha51Alloc(b *testing.B) {
	data := []byte("Mary had a little lamb")
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		h := sha512.New()
		h.Sum(data)
	}
}
