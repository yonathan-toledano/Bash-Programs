#!/bin/bash

while  [[ $number != 1-13 ]];
#while loop stetmant
	do
        echo "please choose a question:
1.Download the Linux vm; log in using the username:tc and the password:tc. What is your current path?
2.Which other users are set on the system?
3.Which other users are set on the system?
4.Access the hidden file, secret, in the tc directory; what is the file content?
5.Use the sudo command to find the last user added to the current system.
6.Update and upgrade your system using the apt-get command and install cmatrix. Check the cmatrix manual and find the flag to use Bold characters.
7.Access the user linuxsec, using the password:1234, and find the content inside the file in the main user directory.
8.Inside the home directory of linuxsec, there is a hidden directory; access and find the text file content.
9.Access /home/tc/Later/1/; find the content inside the files.
10.Access /home/tc/Later/2/; find the directory containing the file o.txt.
11.Find the directory name in /home/tc/Later/2/ that contain the file x.lst.
12.Access /home/tc/Later/3/; find the highest-sized file.
13.leave
"

	read number


	if  [  $number -eq 1  ]
		then
echo "the answer is:
.
.
.
"
	echo "the command is: pwd"
	echo "/home/tc"
echo "
.
.
.
time for the next question :)"

	elif  [  $number -eq 2  ]
		then

echo "the answer is:
.
.
.
"
	echo "the command is: cat /home/tc/LiNux/Hi.txt"
        echo "welcome to CYBERIOM"
echo "
.
.
.
time for the next question :)"


	elif  [  $number -eq 3  ]
		then
echo "the answer is:
.
.
.
"
	echo "the commands is: cd /etc
	then: sudo cat shadow | awk -F : '{print $1}'"
	echo "answer: linuxsec"
echo "
.
.
.
time for the next question :)"



	elif  [  $number -eq 4  ]
		then
echo "the answer is:
.
.
.
"
        echo "the command is: cd /home/tc | cat .secret"
	echo "answer: I'm a hidden file"
echo "
.
.
.
time for the next question :)"

	elif  [  $number -eq 5  ]
		then
 echo "the answer is:
.
.
.
"
	echo "the command: cd /etc
	then: cat passwd to see who is the last after 1000"
        echo "answer: linuxsec"
echo "
.
.
.
time for the next question :)"

	elif  [  $number -eq 6  ]
		then
echo "the answer is:
.
.
.
"
        echo "the command is: sudo apt-get install cmatrix
	then: cmatrix --help to find the answer"
	echo "answer: -B"


echo "
.
.
.
time for the next question :)"


	elif  [  $number -eq 7  ]
		then
echo "the answer is:
.
.
.
"
	echo "the command is: sudo su linuxsec
	then: cd ~/ 
	then: mv "-" funny_name
	then: cat funny_name"
	echo "answer: think smart > think cyber"

echo "
.
.
.
time for the next question :)"


	elif  [  $number -eq 8  ]
		then
echo "the answer is:
.
.
.
"
        echo "the command is: cd ~/.hidden
	then: cat 'linux is fun.txt'"
	echo "answer: Linux is really fun"
echo "
.
.
.
time for the next question :)"


	elif  [  $number -eq 9   ]
		then
echo "the answer is:
.
.
.
"
	echo "the command is: exit
	then: cd /home/tc/Later/1
	then: ls -la (look for the only file that has volium)
	then: cat o.txt"
	echo "answer: Ok, that was easy"
echo "
.
.
.
time for the next question :)"


        elif  [  $number -eq 10   ]
                then
echo "the answer is:
.
.
.
"
        echo "the command is: cd ..
	then: cd 2
	then:cd */o.txt
	(the system will give you the directory name)"
	echo "answer: x599"
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 11   ]
                then
echo "the answer is:
.
.
.
"
        echo "the command is : */x.lst
	(the system will give you the directory name)"
        echo "answer: x411 "
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 12   ]
                then
echo "the answer is:
.
.
.
"
	echo "the command is cd ..
        then: cd 3
        then: ls -la"
        echo "answer: f27"

echo "
.
.
.
last one best one :)"

        elif  [  $number -eq 13  ]
                then
	break

	else
		continue
			fi
				done


