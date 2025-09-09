#!/bin/bash
# Script to install Apache2 and deploy a sample website

set -e

echo "Updating system packages..."
sudo apt update -y

echo "Installing Apache2..."
sudo apt install -y apache2

echo "Starting Apache service..."
sudo systemctl start apache2
sudo systemctl enable apache2

# Create a sample website
echo "Deploying sample website..."
sudo mkdir -p /var/www/html
sudo tee /var/www/html/index.html > /dev/null <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My Sample Website</title>
</head>
<body style="font-family: Arial; text-align: center; margin-top: 50px;">
    <h1>Hello from Apache2 Web Server!</h1>
    <p>This is a sample webpage deployed using a shell script 🚀</p>
</body>
</html>
EOF

echo "Adjusting permissions..."
sudo chown www-data:www-data /var/www/html/index.html || true

echo "Restarting Apache to load changes..."
sudo systemctl restart apache2

echo "Deployment complete! Visit http://<your-server-ip>/ in your browser."
