#!/bin/bash -x
shopt -s extglob

#Patterns for Email address
EMAIL_PATTERN="^[a-z0-9]{1,}$"

#To check the validation of Email
function checkValidation() {
	if [[ $emailInput =~ $EMAIL_PATTERN ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

#To read the email address as input
read -p "Enter an Email address: " emailInput
checkValidation
