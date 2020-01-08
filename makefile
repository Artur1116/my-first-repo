README.md: guessinggame.sh
        echo '# UNIX WORKBENCH' > README.md
        echo '## Peer Graded assignment ##' >> README.md
        echo '## Art Tom ##' >> README.md
        echo "This makefile was running at:" >> README.md
        date "+%Y-%m-%d %H:%M:%S" >> README.md
        echo "There is  $(cat guessinggame.sh | wc -l)  lines of code in guessinggame.sh" >> README.md
