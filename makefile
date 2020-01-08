README.md: guessinggame.sh
	echo '# UNIX WORKBENCH' > README.md
	echo '## Peer Graded assignment ##' >> README.md
	echo '## Art Tom ##' >> README.md
	echo "This makefile was running at:" >> README.md
	date ' +%Y-%m-%d:%H:%M:%S) ' >> README.md
	cat guessinggame.sh | wc -l >> README.md
