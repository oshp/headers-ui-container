[![Build Status](https://travis-ci.org/amenezes/headers-ui-container.svg?branch=master)](https://travis-ci.org/amenezes/headers-ui-container)
# headers-ui-container
An easy way to up and running a web interface to navigate in data collected by headers core script.  

![alt text](https://github.com/oshp/headers/blob/master/docs/strict-transport-security.png)

## Table of contents
* [Description](#description)
* [Project Structure](#project-structure)  
  * [app](#app)  
  * [data](#data)  
  * [database](#database)  
  * [mysql](#mysql)  
  * [nginx](#nginx)  
  * [php](#php)
  * [docker-compose](#docker-compose)
* [How to use](#how-to-use)

## Description  
This project provides an easy way to up and running a web interface to navigate in data collected by headers core script.

## Project Structure
### app/
This folder have all PHP, JS and CSS files to run [headers](https://github.com/oshp/headers)-ui.

### data/
A mininum container for share volume with others containers. Data shared are:
- application files  
`./app/:/var/www/html`
- database data  
`./database/:/var/lib/mysql`

### database/
All database data files.

### mysql/
MySQL (*5.5.52*) container instance.

### nginx/
NGINX (*1.10.1*) container instance.

### php/
PHP (*5.6.25*) container instance. This container have:
 - php-mysqli; and
 - php-mysqlnd.

IE libraries required to access database instance.

### docker-compose  
The definition file to up and running headers-ui.

## How to use

To run the container images it will be necessary a [docker](https://docs.docker.com/engine/installation/) and [docker-compose](https://docs.docker.com/compose/install/) installation.  

With requirements met, just follow the steps below:

```bash
$ docker-compose build
$ docker-compose up -d
$ bash db_run.sh **necessary to populate headers database**
```
