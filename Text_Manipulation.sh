#!/bin/bash

while  [[ $number != 1-19 ]];
#while loop stetmant
	do
        echo "please choose a question:
1.Download the passwords file and find the number of lines it contains.
2.Find the number of lines containing -gmail-.
3.Filter the file passwords.lst and find the most common password.
4.Which domain repeats itself 99 times?
5.How many lines contain -@-?
6.How many lines don't have -@-?
7.The file has passwords and usernames; how many passwords contain -@-?
8.How many passwords contain -!-?
9.How many passwords contain -.-?
10.How many email addresses contain -2-?
11.In what line is the first password that contains -.-?
12.Download the text file and find the number of lines the file contains.
13.Find the number of words in the file.
14.Find the number of lines containing the word secret.
15.Replace every -e- letter in the file with -x- and save it into a new file. How many lines contain -xx- in the new file?
16.Print line 97; use the wc tool to find the number of characters in that line.
17.Find the content of line 111.
18.Clear the empty lines in the file; how many lines are left?
19.leave
"
	read number


	if  [  $number -eq 1  ]
		then
	wget https://cyberiumarena.com/labs/nx201/passwords.lst
echo "the answer is:
.
.
.
"
	cat passwords.lst | wc -l
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
        cat passwords.lst | grep gmail | wc -l
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
        cat passwords.lst | awk '{print $1}' | uniq -ci | sort -u | tail -n1 | awk '{print $2}'
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
        cat passwords.lst | awk -F @ '{print $2}' | sort | uniq -ic | grep 98
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
        cat passwords.lst | grep @ | wc -l
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
        cat passwords.lst | grep @ -v | wc -l


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
        cat passwords.lst | awk '{print $1}' | grep @ | wc -l
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
        cat passwords.lst | awk '{print $1}' | grep ! | wc -l
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
	 cat passwords.lst | awk '{print $1}' | grep [.] | wc -l
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
        cat passwords.lst | awk '{print $2}' | grep 2 | wc -l
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
         cat -n passwords.lst | awk '{print "the line number = " "*********"  $1  "**********"   "  the password was:  " $2 }'| grep [.] | head -n 1
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 12   ]
                then

	wget https://cyberiumarena.com/labs/nx201/file.txt

echo "the answer is:
.
.
.
"
	cat file.txt | wc -l
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 13  ]
                then
echo "the answer is:
.
.
.
"
        cat file.txt | wc | awk '{print $2}'
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 14  ]
                then
echo "the answer is:
.
.
.
"
        cat -n file.txt | grep -i secret | wc -l
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 15   ]
                then
	cat file.txt | sed 's/e/x/g' >> fun.txt

echo "the answer is:
.
.
.
"
        cat fun.txt |grep xx | wc -l


echo "
.
.
.
time for the next question :)"



	elif  [  $number -eq 16  ]
		then
echo "the answer is:
.
.
.
"
        cat file.txt | head -n98 | tail -n1 | wc | awk '{print $3}'
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 17  ]
                then
echo "the answer is:
.
.
.
"
        cat file.txt | head -n111 | tail -n1
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 18  ]
                then
echo "the answer is:
.
.
.
"
        cat file.txt | grep " "  | wc -l
echo "
.
.
.
time for the next question :)"
        elif  [  $number -eq 19  ]
                then
	break

	else
		continue
			fi
				done


