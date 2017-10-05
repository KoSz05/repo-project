#!/usr/bin/env_bash

function reading {
	ls -l>ls.txt
	res=$(cat ls.txt|egrep "^\-"|wc -l)
	echo "Please guess the number of files (directories excluded) in the current directory:"
	read guess
}

reading

while [[ $guess -ne $res ]]
   do
     echo "$guess"|egrep "[0-9]+"
     if [[ $? -eq 0 ]]
     then
      if [[ $guess -lt $res ]]
      then
      echo "Your guess is too small, try again:"
      read guess
     elif [[ $guess -gt $res ]]
      then
      echo "Your guess $guess is too big, try again"
      read guess
     fi
      else
     echo "You did not enter a valid number, try again:"
     read guess
     fi
    done

   echo "CONGRATULATIONS!, Your guess $guess is correct!" 
   echo "****************END of PROGRAMM****************"

