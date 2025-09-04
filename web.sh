#!/bin/bash

# Install Apache and required tools
sudo apt update -y > /dev/null
PACKAGE="unzip curl apache2 docker.io"
sudo apt install $PACKAGE -y > /dev/null
URL="https://www.tooplate.com/zip-templates/2135_mini_finance.zip"
ZIPPED="2135_mini_finance.zip"
# Start and enable Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Create temp directory
mkdir -p /tmp/webfiles
cd /tmp/webfiles

# Download template
wget $URL > /dev/null

# Unzip template
unzip $ZIPPED > /dev/null

# Copy website files to Apache web root
sudo cp -r 2135_mini_finance/* /var/www/html/

# Restart Apache
sudo systemctl restart apache2

# Clean up
echo
echo "REMOVING DIRECTORY"
echo
rm -rf /tmp/webfiles

echo "Deployment completed! Open your browser and access the server's IP."
sudo systemctl status apache2

ls /var/www/html/
tree /var/www/html/
