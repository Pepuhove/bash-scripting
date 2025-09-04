#!/bin/bash

# Ask for username
read -p "Enter your name: " name

# Ask for password (hidden input)
read -s -p "Enter your password: " password
echo

# Check password length
if [ ${#password} -lt 5 ]; then
    echo "Your password is weak!!"
    exit 1
else
    echo "Hi $name, Welcome to Bash scripting"
fi

