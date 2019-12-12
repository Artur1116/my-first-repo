echo "How many files are in the current directory ?"
read response


function file_cnt {
        local cnt=$(ls -l | wc -l)-1
        echo $cnt
}

correct=$(file_cnt)

while [[ $response -ne $correct ]]
do
        if [[ $response -gt $correct ]]
        then
                echo "No.. it's too high"
        else
                echo "No.. it's to low"
        fi
        echo
        echo "Try again: "
        read response
done

echo "Great! You guess how many files are in the current directory"
echo "Correct number is $response"
