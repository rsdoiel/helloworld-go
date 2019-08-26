// +build js,wasm
package main

// HelloWorld func, returns a string "Hello World!"
//go:export HelloWorld
func HelloWorld() string {
	return "Hello World!"
}

// NOTE: We include an include an empty main like we do
// when writing Go for c-shared libraries.
func main() {
}
