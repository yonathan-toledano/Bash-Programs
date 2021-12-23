
#!/bin/bash


while  [[  $number != 1-13  ]];
#while loop stetmant
	do

        echo "please choose a question:
1) Install the SSH service via the package 'openssh-server'; use netstat to view the port this service is using.
2) What is the netstat flag to display PID/Program name.
3) Use the netstat command to find the program name running on port 22.
4) What is the netstat flag to display TCP connections.
5) Access the path /etc/ssh/ and find the filename with the SSH port configuration.
6) Change the SSH service default port and restart the service; which file in /var/log/ logged the change?
7 Change the password for your user; which file inside /var/log/ logged the change?
8) Install the FTP service using the 'vsftpd' apt package; use the netstat command to find the port vsftpd is using.
9) Find in /etc/ the filename with the FTP port configuration.
10)Access the FTP service with the user using the correct credentials; how does it display inside vsftpd.log?
11) Access the FTP service with the user using wrong credentials; how does it display inside vsftpd.log?
12) Install apache2; what is the default port used by the Apache service?
13) nano lab3.sh
14) leave
"
	read number

	if  [  $number -eq 1  ]
		then
echo "the answer is:
.
.
.
"
	sudo netstat -antp | grep ssh | tail -n1 | cut -d ":" -f4
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
	netstat --help
	echo ".
					the answer:
		.
		.
		-p, --programs           display PID/Program name for sockets"

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
	sudo netstat -antp | grep 22 | tail -n1 | cut -d "/" -f2

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
	netstat --help
        echo ".
	the answer is:
		.
		.
		{-t|--tcp}"
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
	sudo apt-get install locate -y
	cd /var/lib/dpkg
	sudo rm lock
echo " the answer is:
.
.
."
	locate sshd | tail -n1 | cut -d ":" -f4
echo "
.
.
.
time for the next question :)"


	elif  [  $number -eq 6  ]
		then
echo "there you go
.
.
."
	cd /etc/ssh
	sudo chmod 777 sshd_config
	sudo touch sshd1_config
	sudo chmod 777 sshd1_config
        cat sshd_config | sed 's/22/2222/' > sshd1_config
	cat sshd1_config > sshd_config
	sudo systemctl restart ssh

	read -p "press enter"

	cat sshd_config | sed 's/2222/22/' > sshd1_config
        cat sshd1_config > sshd_config
	sudo systemctl restart ssh
	sudo chmod 555 sshd_config
        sudo chmod 555 sshd1_config

	cd ~/Desktop
	date | cut -d " " -f2,3,4 | cut -d ":" -f1,2 |  date | cut -d " " -f2,3,4 | cut -d ":" -f1,2 > date.txt
	cd /var/log
	ls -la | grep -f ~/Desktop/date.txt | head -n 1
echo "
.
.
.
.:)"

	elif  [  $number -eq 7  ]
		then

echo "the answer is:
.
.
.
"
	passwd
	date | cut -d " " -f2,3,4 | cut -d ":" -f1,2 |  date | cut -d " " -f2,3,4 | cut -d ":" -f1,2 >> ~/Desktop/date.txt
        ls -la | grep -f ~/Desktop/date.txt | head -n2 | tail -n1

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
	sudo netstat -antp | grep ftp | cut -d "/" -f2

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
	cd /etc
	ls -la | grep ftp | cut -d " " -f16 | tail -n 1
echo "
.
.
.
time for the next question :)"


        elif  [  $number -eq 10   ]
               then

echo "enter your ubuntu user-name and password.
..
.
type (exit) and press enter to end the cast.
"
        ftp 127.0.0.1

echo " the answer is:
..
.
."
	cat /var/log/vsftpd.log | tail -n 1 | cut -d ] -f3
echo "
.
.
..
time for the next question :)"

        elif  [  $number -eq 11   ]
                then
echo "enter anything but your ubuntu user-name.
..
.
type (exit) and press enter to end the cast.
"
        ftp 127.0.0.1

echo " the answer is:
..
.
."
        cat /var/log/vsftpd.log | tail -n 1 | cut -d ] -f3
echo "
.
.
..
time for the next question :)"


        elif  [  $number -eq 12   ]
                then

	sudo apt-get install apache2 -y
echo "the answer is:
.
.
."
	sudo netstat -antp | grep apache2 | cut -d ":" -f4
echo ".
.
.
thank you and have a nice day :)"

        elif  [  $number -eq 13   ]
                then

echo "
.
.
.
please name the path in which lab3.sh is located:"

	read var_path
	cd $var_path
	nano lab3.sh

        else  [  $number -eq 14  ]
	break
	fi
	done
