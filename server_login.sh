#!/bin/bash

# Check if the user is logging in for the first time
if [ ! -f ~/.server_code_check ]; then
    # Prompt the user for the server code
    read -p "Please enter the server code: " server_code

    # Check if the server code is correct
    if [ "$server_code" != "22443808080" ]; then
        # Block the user's IP address using ufw
        sudo ufw insert 1 deny from "$(who | awk -v tty=$(who | awk '{print $2}') '($2 == tty) {print $5}')" to any

        # Log the blocked IP address
        echo "$(who | awk -v tty=$(who | awk '{print $2}') '($2 == tty) {print $5}') has been blocked due to incorrect server code" >> ~/blocked_ips.log

        # Display an error message and exit
        echo "Incorrect server code. Your IP address has been blocked."
        exit 1
    fi

    # Create a marker file to indicate that the server code has been checked
    touch ~/.server_code_check
fi

# Allow the user to access the terminal
echo "Welcome to the server terminal!"
