# LAMP Stack Docker Compose Template

This repository serves as a template for starting new web development projects with a LAMP (Linux, Apache, MySQL, PHP) stack using Docker Compose.

## Features

-   **Dockerized:** All services are containerized with Docker.
-   **Portable:** All data, including the database, is stored within the project folder, making it easy to move between machines.
-   **Secure:** Database passwords are handled securely using a `.env` file.
-   **Debug-Friendly:** Apache is configured for debug-level logging.
-   **Easy to Use:** Comes with simple `start.sh` and `stop.sh` scripts.

## Prerequisites

-   [Docker](https://docs.docker.com/get-docker/)
-   [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1.  **Create a new repository from this template:** Click the "Use this template" button on the GitHub page of this repository.

2.  **Clone your new repository:**

    ```bash
    git clone https://github.com/your-username/your-new-repository.git
    cd your-new-repository
    ```

3.  **Create a `.env` file:**

    ```bash
    cp .env.example .env
    ```

    Then, you can customize the `MARIADB_ROOT_PASSWORD` in the `.env` file if you wish.

4.  **Start the services:**

    ```bash
    ./start.sh
    ```

5.  **Access the application:**

    -   **Application:** [http://localhost:8080](http://localhost:8080)
    -   **phpMyAdmin:** [http://localhost:8081](http://localhost:8081)

## Database Credentials

-   **Host:** `db`
-   **Username:** `root`
-   **Password:** The password you set in your `.env` file.
-   **Database:** `mydatabase`

## Stopping the services

```bash
./stop.sh
```

## Customization

-   **Application Code:** Place your PHP application code in the `src` directory.
-   **Apache Configuration:** You can customize the Apache configuration by editing the `config/apache-custom.conf` file.
-   **Database:** The database files are stored in the `database` directory.