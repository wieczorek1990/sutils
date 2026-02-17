build:
	swiftc cat.swift
clean:
	rm ./cat
run:
	./cat $(ARGS)
test: build
	make run ARGS="one two three...four five"
