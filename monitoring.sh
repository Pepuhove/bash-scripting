#!/bin/bash
# Script to check if Apache2 is running, and start it if not.

# Print current date/time
date
echo "################################################"

# Check if Apache2 PID file exists (indicating the process is running)
#ls /var/run/apache2/apache2.pid > /dev/null
#ls /var/run/apache2/apache2.pid > /dev/null 

if [ -f /var/run/apache2/apache2.pid ]; then
    # PID file exists, Apache2 is running
    echo "Apache2 process is running."
else
    # PID file not found, Apache2 might not be running
    echo "Apache2 process is not running."
    echo "Attempting to start the process ..."
    sleep 3

    # Try to start Apache2 service
    systemctl start apache2

    # Check exit status of the previous command
    if [ $? -eq 0 ]; then
        echo "Process started successfully."
    else
        echo "Process failed to start. Please contact the Admin."
    fi
fi

