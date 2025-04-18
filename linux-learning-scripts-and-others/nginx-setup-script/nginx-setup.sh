#!/bin/bash

echo "starting nginx setup..."
echo

if ! command -v nginx &> /dev/null
then 
	echo  "Nginx not found. Installing..."
	sudo apt update
	sudo apt install -y nginx
else 
	echo "nginx is aleady installed"
fi

HTML_SOURCE=/home/indura08/Linux-Learning/linux-learning-scripts-and-others/nginx-setup-script/index.html
TARGET=/var/www/html/index.html

if [ ! -f "$HTML_SOURCE" ] ; then

	echo "Html file not found ata $HTML_SOURCE"
	exit 1
fi

echo "Copying html file to nginx..."
sudo cp "$HTML_SOURCE" "$TARGET"

sudo chmod 644 "$TARGET"

echo "Restarting nginx"
sudo systemctl restart nginx

echo "Your site runs at http://localhost" 

#ADDITIONAL NOTES:
#------------------

#YOU CAN CHECK IF THE NGINX SERVER IS RUNNING USING  THE COMMAND : "sudo systemctl status nginx"

#YOU CAN USE THE COMMAND "sudo systemctl stop nginx" TO STOP THE NGINX SERVER

#IS THE FILE IS IN RIGHT PLACE , TO CHECK THAT YOU CAN USE : "cat /var/www/html/index.html"

#TO RESTART NGINX SERVER : "sudo systemctl restart nginx"

#TO-RELOAD NGINX SERVER(WITHOUT STOPING) : "sudo systemctl reload nginx"

#STEPS TO CHANGE PORT FORM 80 TO SOMETHING ELSE LIKE 5000

	#1.COMMAND : "sudo nano /etc/nginx/sites-available/default"
	#2.FIND THE LINE  : "listen 80 default_server"
	#3.CHANGE IT TO : "listen 5000 default_server"
	#4.THEN-RESTART-NGINX: "sudo systemctl restart nginx" and go to the relevant port you made 



