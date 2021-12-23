#!/bin/bash

while  [[ $number != 1-15 ]];
#while loop stetmant
	do
        echo "please choose a question:
1. What is the name of the 7th OSI layer?
2. Which OSI layer number is responsible for mac addresses?
3. Which is a transport layer protocol: TCP, IP, DNS, ASCII?
4. In which OSI layer name do routers operate?
5. Encryption takes place at which OSI layer name?
6. In what OSI layer name is IP implemented?
7. In What OSI layer name is USB?
8. What is the acronym of OSI?
9. Which protocol is more reliable, TCP or UDP?
10. What is the acronym of TCP?
11. What is the acronym of UDP?
12. Which protocol uses the 3-way handshake?
13. What port does the DNS service use?
14. Which of the following uses the UDP protocol: HTTP, HTTPS, RDP, DNS?
15. leave
"

	read number


	if  [  $number -eq 1  ]
		then
echo "the answer is:
.
.
.
"
	echo "application"
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
	echo "2"
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
	echo "tcp"
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
        echo "Network-Control Layer"
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
	echo "Presentation"
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
        echo "Network"


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
	echo "physical"
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
        echo "Open Systems Interconnection"
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
	echo "tcp"
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
        echo "Transmission Control Protocol"
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
        echo "User Datagram Protocol"
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
	echo "53"
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 13   ]
                then
echo "the answer is:
.
.
.
"
        echo "dns"
echo "
.
.
.
time for the next question :)"

        elif  [  $number -eq 14   ]
                then
echo "the answer is:
.
.
.
"
        echo "dns"
echo "
.
.
.
last one best one :)"

        elif  [  $number -eq 15  ]
                then
	break

	else
		continue
			fi
				done


