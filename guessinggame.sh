function isAnumber () {
	number='^[0-9]+$'
    if ! [[ $response =~ $number ]]
	then
		echo 1
		return 1
	fi

}

function file_cnt {
	local cnt=`ls -l . | egrep -c '^-'`
    echo $cnt
}

correct=$(file_cnt)



echo "How many files are in the current directory ?"
echo "Enter your answer"
read response




while [[ $response -ne $correct ]]
do
	checkNumber=$( isAnumber $response)
	if [[ $checkNumber -eq 0 ]]
	then 
        if [[ $response -gt $correct ]]
        then
                echo "No.. it's too high"
        elif [[ $response -lt $correct ]]
        then
                echo "No.. it's to low"
        fi

        echo "Try again:"
        read response
	else
		echo "Please type a number:" 
		read response
	fi
done

echo "Great! You guess how many files are in the current directory"
echo "Correct number is $response"
