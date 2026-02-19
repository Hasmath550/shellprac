
#!/bin/bash

USERID=$(id -u)     #checking root user 

VALIDATE(){
    if [ $1 -ne 0 ]; then
     echo "$2 is failure"

     exit 1

    else 
     echo "$2 is success"
    fi

}

dnf install nginx -y
VALIDATE $? "install nginx"

dnf install mysql -y
VALIDATE $? "install mysql"

dnf install nodejs -y
VALIDATE $? "install nodejs"
