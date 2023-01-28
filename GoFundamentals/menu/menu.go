package menu

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

type MenuItem struct {
	name   string
	prices map[string]float64
}

type menu []MenuItem

func (m menu) print() {
	for _, item := range m {
		fmt.Println(item.name)
		fmt.Println(strings.Repeat("-", 10))
		for size, price := range item.prices {
			// "\t" tab ; "%10s" string w/ 10 chars ; %10.2f 10 chars, 2 point precision, floating point
			fmt.Printf("\t%10s%10.2f\n", size, price)
		}
	}
}

func (m *menu) add() {
	fmt.Println("Please enter the name of the new item")
	itemName, _ := in.ReadString('\n')
	data = append(*m, MenuItem{name: itemName, prices: make(map[string]float64)})
}

var (
	in = bufio.NewReader(os.Stdin)
)

func AddItem() {
	data.add()
}

func Print() {
	data.print()
}
