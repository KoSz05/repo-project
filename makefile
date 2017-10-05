all: README.md
README.md:
	touch README.md
README.md: guessinggame.sh
	echo "# Guessing the number of files in the current directory"> README.md
	echo "  ">>README.md
	echo "The guessinggame file composes of lines:">>README.md
	wc -l guessinggame.sh|egrep -o "[0-9]+">>README.md
	echo "  ">>README.md
	echo "Last run of make:"`date +%D/%R`>>README.md
clean:
	rm README.md

