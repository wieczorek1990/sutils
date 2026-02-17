build:
	swiftc echo.swift
clean:
	rm ./echo
run:
	./echo $(ARGS)
test: build
	make run ARGS="one two three...four"
