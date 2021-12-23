#!/bin/bash

function yonathan_func()
{
	while [[  $user_chois -ne 0-9 ]]
		do

echo "pleas chois a number from the menu:
1) get your own ip and subnet-mask
2) ping google
3) dislplay date
4) display time
5) create a new folder
6) creat a new file
7) replace all ip adresses in allinone.txt whit x.x.x.x
8) display allinone.txt content
9) close
"

	read user_chois

	if [  $user_chois -eq 1  ]
		then
echo "...
..
."

ifconfig | head -n 2 | tail -n1 | awk '{print "your ipv4 is : " $2"+" $4}' | sed 's/+/\nyour musk is : /'

echo ".
..
..."

	elif [ $user_chois -eq 2  ]
		then

echo "pinging google"
	ping 8.8.8.8 -c4
echo "done"

	elif [  $user_chois -eq 3  ]
		then

echo "today is:
.
..
..."
date | cut -d " " -f1,2,3,4
echo "...
..
."

	elif [  $user_chois -eq 4  ]
        	then

echo " the time now is:
.
..
..."
date | cut -d " " -f5,6
echo "...
..
."
	elif [  $user_chois -eq 5  ]
		then

echo "please enter a full path to place your new folder:"
	read paht
echo "how would you like to name your folder:"
	read folder_name
cd $path | mkdir $folder_name
echo "where done
.
..
...
"
cd $path | ls -la | grep $folder_name
echo "...
a new folder was created :)
...
..
.
enjoy!"

	elif [  $user_chois -eq 6  ]
	then

echo "please enter a full path to your new file:"
	read paht
echo "how would you like to name your file:"
	read file_name
cd $path | touch $file_name
echo "where done a new file was created
..
.
"
cd $path | ls -la | grep $file_name
echo.
a new file was created "
.
..
enjoy!"

	elif [  $user_chois -eq 7  ]
		then

cd ~/Desktop
cat allinone.txt | sed -E 's/([0-9]{1,3}\.){3}[0-9]{1,3}/x.x.x.x/' > mask.txt
echo "
.
.
all ipv4 in list are musked"
echo "
.
."
	elif [  $user_chois -eq 8  ]
		then

cat mask.txt
echo "...
..
.
all ip musked"

	else [  $user_chois -eq 9  ]
	break
	fi
	done
}
yonathan_func
