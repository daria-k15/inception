# Inception (42 project)

This repo is System Adminstration exersice based on Docker

#Description

This project aims to broaden knowledge of system administration by using Docker.
Goal is to virtualize several Docker images, creating them in new personal virtual machine. \

It was set up:

A Docker container that contains NGINX with TLSv1.2;
A Docker container that contains WordPress + php-fpm (it was installed and configured) only without nginx;
A Docker container that contains MariaDB only without nginx;
A volume that contains WordPress database;
A second volume that contains WordPress website files;
A docker-network that establishes the connection between your containers;
Adminer for WordPress;
Redis cache for WordPress;
The domain to use is "heveline.42.fr". The DB has Administrator and common user availability.
