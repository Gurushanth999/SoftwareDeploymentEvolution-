#!/bin/bash


# Update Amazon Linux 2023 packages
sudo dnf update -y


# Install Apache, MariaDB, PHP and required components
sudo dnf install -y httpd mariadb105-server php php-mysqlnd php-gd php-xml wget


# Start and enable Apache
sudo systemctl start httpd
sudo systemctl enable httpd


# Start and enable MariaDB
sudo systemctl start mariadb
sudo systemctl enable mariadb


# Create the WordPress database and database user
sudo mysql -u root
CREATE DATABASE wordpress_db;
CREATE USER 'wp_user'@'localhost' IDENTIFIED BY '<HIDDEN_PASSWORD>';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wp_user'@'localhost';
FLUSH PRIVILEGES;


# Download and extract WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz


# Deploy WordPress to the Apache web root
sudo cp -r wordpress/* /var/www/html/


# Configure ownership and permissions
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html/
