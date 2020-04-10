#!/bin/bash -x
shopt -s extglob

#Patterns for Email address
EMAIL_PATTERN1="^[a-z0-9]{1,}$"
EMAIL_PATTERN2="^[@]{1}[a-z0-9]{1,}$"

#To check the validation of Email
function checkValidation() {
	if [[ $1 =~ $2 ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

#To read the email address as input
read -p "Enter an Email address: " emailInput
checkValidation $emailInput $EMAIL_PATTERN1
