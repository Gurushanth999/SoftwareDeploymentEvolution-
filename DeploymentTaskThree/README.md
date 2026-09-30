# AWS EC2 WordPress Deployment

This folder contains material for Task 3.1 of SWE40006 – Software Deployment and Evolution.

The deployment involved provisioning an Amazon EC2 instance running Amazon Linux 2023.
It also involved configuring an Apache, MariaDB and PHP web application environment. 
WordPress was deployed to the EC2 instance and accessible through the public IPv4 address.


## Deployment Components

- Amazon Web Services (AWS)
- Amazon EC2
- Amazon Linux 2023
- Apache HTTP Server
- MariaDB
- PHP
- WordPress
- SSH / PuTTY


## Repository Files

- `wordpress-setup.sh` – Contains non-sensitive initialization & WordPress deployment commands for EC2 instance.

Sensitive information (AWS credentials, SSH private keys, database passwords) has been deliberately excluded.
