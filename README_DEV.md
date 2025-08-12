# Local Development Guide

This document provides instructions for setting up and running the LAMP stack on your local machine for development.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## First-Time Setup

1.  **Clone the Repository**

    ```bash
    git clone <repository_url>
    cd template-LAMP-stack
    ```

2.  **Create Environment File**

    Copy the example environment file to a new `.env` file. This file is ignored by Git and will hold your local secrets.

    ```bash
    cp .env.example .env
    ```

3.  **Configure Password**

    Open the `.env` file and set a secure password for `MARIADB_ROOT_PASSWORD`.

## Running the Application

1.  **Start All Services**

    Use Docker Compose to build the images and start all containers in the background.

    ```bash
    docker-compose up -d --build
    ```

2.  **Access the Services**

    - **PHP Application**: [http://localhost:8080](http://localhost:8080)
    - **phpMyAdmin**: [http://localhost:8081](http://localhost:8081)

3.  **Stopping the Application**

    To stop all running services, use:

    ```bash
    docker-compose down
    ```

## Data Persistence

- **Database Files**: The MariaDB database stores its data in the `./database` directory on your host machine. This is achieved using a **bind mount**.
- **Git Ignore**: The `./database` directory is listed in `.gitignore`, so your local data files will never be committed to version control.
- **Persistence**: Because the data is on your host machine, it will persist even after you run `docker-compose down`.

## Connecting to the Database

- **Host**: `db` (from within another Docker container) or `localhost` (from your host machine)
- **Port**: `3306`
- **Username**: `root`
- **Password**: The one you set in your `.env` file.

## Running Tests

This project includes a simple test to verify the web server is running.

```bash
./test.sh
```
