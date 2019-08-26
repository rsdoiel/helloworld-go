#
# Makefile for helloworld.go using Golang go compiler.
# 
#
GOROOT=$(shell go env GOROOT)

build: helloworld.wasm wasm_exec.js

helloworld.wasm: helloworld.go
	env GOOS=js GOARCH=wasm go build -o helloworld.wasm helloworld.go

wasm_exec.js:
	cp -v $(GOROOT)/misc/wasm/wasm_exec.js ./

clean: .FORCE
	if [ -f wasm_exec.js ]; then rm wasm_exec.js; fi

.FORCE:
