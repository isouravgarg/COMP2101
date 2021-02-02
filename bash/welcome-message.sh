#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############

echo "What is your name?"
read USER

# Generating hostname variable:
hostname=$(hostname)

# For Day and Time
day=$(date +"%A")
date=$(date +"%I:%M %p")

# Setting the titles:
if [ $day == "Monday" ]
then
	title="Monday might be sunny"
elif [ $day == "Tuesday" ]
then
	title="Tuesday might be colder"
elif [ $day == "Wednesday" ]
then
	title="Wednesday might be rainy"
elif [ $day == "Thursday" ]
then
	title="Thursday might be warmer"
elif [ $day == "Friday" ]
then
	title="Friday might be snow"
elif [ $day == "Saturday" ]
then
	title="Saturday might be a party"
else
	title="Sunday is holiday"
fi

###############
# Main        #
###############
cat <<EOF

It is $day at $date.
Welcome to planet $hostname, "$title $USER!"
EOF
