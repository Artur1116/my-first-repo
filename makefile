all: README.md

README.md:
	echo '# UNIX WORKBENCH' > README.md
	echo '## Peer Graded assignment ##' >> README.md
	echo '## Art Tom ##' >> README.md
	echo "This makefile was running at: $(date +%Y-%m-%d:%H:%M:%S)" >> README.md
	echo '* There is $(wc -l < guessinggame.sh) lines of code in guessinggame.sh *' >> README.md
