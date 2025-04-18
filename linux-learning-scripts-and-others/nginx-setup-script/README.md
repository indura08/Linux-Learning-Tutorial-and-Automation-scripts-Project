HOW TO START NGINX SERVER:

1.JUST HIT THE COMMAND ./nginx-setup.sh or copy it to user/bin/filename AND RUN THE COMMAND "filename" IN ANYWHERE FORM THE LINUX ENVIRONMENT


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
        #3.CHANGE IT TO : "listen 5000 default_server" and comment out everyhting else that says listen 80 inside the server block
        #4.THEN-RESTART-NGINX: "sudo systemctl restart nginx" and go to the relevant port you made 

