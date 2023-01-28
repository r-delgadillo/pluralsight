package cli

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func placeHolderCli() {
	fmt.Println("What would you like me to scream?")
	reader := bufio.NewReader(os.Stdin)
	input, _ := reader.ReadString('\n')
	input = strings.TrimSpace(input)
	input = strings.ToUpper(input)
	fmt.Println(input + "!")
}
