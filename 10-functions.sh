
#!/bin/bash

USERID=$(id -u)     #checking root user 
if [ $USERID -ne 0 ]; then

 echo "run with root user access"
 exit 1
 
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
     echo "$2,,is failure"
    else 
     echo "s2 is success"
    fi

}

dnf install nginx -y
VALIDATE $? "install nginx"

dnf install mysql -y
VALIDATE $? "install mysql"

dnf install nodejs -y
VALIDATE $? "install nodejs"
