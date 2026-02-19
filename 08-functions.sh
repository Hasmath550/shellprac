#!/bin/bash
USERID=(id -u)
if [$USERID -ne 0]; then
echo "run with root user access"
fi
echo "install nginx"
dnf install nginx -y