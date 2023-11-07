package main

import (
	"fmt"
	"strconv"
)

func isPalindrome(x int) bool {
	var stringValue string
	stringValue = strconv.Itoa(x)
	println(stringValue)

	var back string = ""
	for i := 0; i < len(stringValue); i++ {
		fmt.Printf("%c \n", stringValue[i])
		back = back + strconv.Itoa(int(stringValue[len(stringValue)-i]))
	}
	println(back)
	return true
}

func main() {
	println(isPalindrome(131))
	println(isPalindrome(133))
	println(isPalindrome(-131))
}
