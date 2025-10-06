# Docker Compose LEMP Stack

This repository contains a little `docker-compose` configuration to start a `LAMP (Laravel Apache, MySQL & PHP)` stack.

## Details

The following versions are used.

* Laravel 10
* PHP 8.2 (FPM) - With MySQLi & PDO_MySQL & other tools (vim, git, composer etc)
* Apache 2.4
* MySQL 8

## Configuration

The starup configurations can be found in `/docker/config/`.

You can also set the following environment variables, for example in the included `.env` file:

| Key | Description |
|-----|-------------|
|APP_NAME|The name used when creating a container.|
|MYSQL_ROOT_PASSWORD|The MySQL root password used when creating the container.|

## Usage

To use it, simply follow the following steps:

##### Clone this repository.

Clone this repository with the following command: `git clone https://github.com/med-ezzairi/lamp_skeleton.git`.

##### setup .env file

copy .env.example to .env `cp .env.example .env` and setup config values.

##### Start the server.

Start the server using the following command inside the directory you just cloned: `docker-compose up`.

## Entering the containers

You can use the following command to enter a container:

Where `{CONTAINER_NAME}` is one of:

`docker exec -ti {CONTAINER_NAME} /bin/bash`

* `{APP_NAME}-app`
* `{APP_NAME}-httpd`
* `{APP_NAME}-database`


## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)

