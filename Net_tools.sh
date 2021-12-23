#!/bin/bash

while  [[ $number != 1-10 ]];
	do
        echo "please choose from the menu
1.Dislpay network card settings

2.Display the network cards ip

3.Ping google

4.Line counter

5.Create a new desktop folder

6.Create a new file inside your new folder

7.Display the last 10 system logs

8.Display the last 5 authorization logs

9.See time and date

10.Leave
"

read number

if  [  $number -eq 1  ]
then
 ifconfig | head -n8

elif  [  $number -eq 2  ]
then
 ifconfig | head -n 7 | tail -n 6 | cut -d " " -f9,10,11 | cut -d "
" -f1

elif  [  $number -eq 3  ]
		then
         ping 8.8.8.8 -c 4

elif  [  $number -eq 4  ]
then
	echo  "choose the full path to your file diratory:"
read directory_path
cd $directory_path
	echo "choose a file"
read file_name
cat $file_name | wc -l

elif  [  $number -eq 5  ]
then
        echo "how would you like to name your folder?:"
read folder_name
cd ~/Desktop | mkdir $folder_name

elif  [  $number -eq 6  ]
then
	echo "how would you like to name the file?:"
read new_file_name
cd $folder_name
touch $new_file_name

elif  [  $number -eq 7  ]
then
cat /var/log/syslog | head -n 10

elif  [  $number -eq 8  ]
then
cat /var/log/auth.log | tail -n 5

elif  [  $number -eq 9   ]
then
	date

elif  [  $number -eq 10  ]
then
	echo "byby"
break

	else
		continue
			fi
				done


