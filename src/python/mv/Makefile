run:
	./mv $(ARGS)
test:
	echo 1 > one
	make run ARGS="one another_one"
	rm another_one

	echo 1 > one
	mkdir directory
	make run ARGS="one directory/"
	rm directory/one
	rmdir directory/

	echo 1 > one
	echo 2 > two
	mkdir directory/
	make run ARGS="one two directory/"
	rm directory/one directory/two
	rmdir directory/
