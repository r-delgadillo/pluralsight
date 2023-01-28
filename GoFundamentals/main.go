package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"

	// "github.com/r-delgadillo/pluralsight/GoFundamentals/interfaces"
	"github.com/r-delgadillo/pluralsight/GoFundamentals/generics"
	"github.com/r-delgadillo/pluralsight/GoFundamentals/menu"
)

func main() {
	// interfaces.InterfaceMain()
	generics.GenericsMain()
	// demo()
}

type MenuItem struct {
	name   string
	prices map[string]float64
}

var (
	in = bufio.NewReader(os.Stdin)
)

func demo() {
quitLabel:
	for {
		fmt.Println("Please select an options")
		fmt.Println("1) Print menu")
		fmt.Println("2) Add item")
		fmt.Println("q) quit")

		selector, _ := in.ReadString('\n')
		switch strings.TrimSpace(selector) {
		case "1":
			menu.Print()
		case "2":
			menu.AddItem()
		case "q":
			break quitLabel
		default:
			fmt.Println("Unknown option!")
		}
	}
}
