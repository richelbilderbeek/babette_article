all:
	cd article; make; cd ..

count_words:
	cd article; ./count_words.sh ; cd ..
