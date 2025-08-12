# Deployment and CI/CD Guide

This document outlines the CI/CD pipeline and provides a recommended process for deploying the application to a production environment.

## CI/CD Pipeline Overview

The CI/CD workflow is defined in `.github/workflows/main.yml` and performs the following key actions:

1.  **Trigger**: The workflow runs on every push or pull request to the `main` branch.
2.  **Login**: It securely logs into Docker Hub using secrets.
3.  **Build & Push**: It builds the `php` application Docker image and pushes it to Docker Hub, tagged as `latest`.

This means your latest stable application image is always available to be deployed to a production server.

## Production Deployment Strategy

For production, it is **strongly recommended** to use a **Docker Named Volume** for the database instead of the bind mount (`./database`) used in development. Here's why:

- **Performance**: Named volumes have better I/O performance on most platforms.
- **Decoupling**: It decouples the data from the host's file structure, making the setup more portable and resilient.
- **Management**: It allows you to manage the data using the Docker CLI (`docker volume ls`, `docker volume inspect`, etc.), which is safer than direct file manipulation.

### How to Deploy in Production

This guide assumes you have a server with Docker and Docker Compose installed.

**Step 1: Prepare the Server**

1.  Create a directory for your application on the server.

    ```bash
    mkdir my-lamp-app && cd my-lamp-app
    ```

2.  Pull the latest application image from Docker Hub.

    ```bash
    docker pull piyapiya/my-php-app:latest
    ```

3.  Copy the `docker-compose.yml` and the `init-db` directory to your server.

**Step 2: Create a Production Compose File**

Create a file named `docker-compose.prod.yml`. This file will override the development configuration and configure the database to use a named volume.

```yaml
# docker-compose.prod.yml
services:
  db:
    volumes:
      # This switches the volume to a Docker-managed named volume called 'mariadb_data'
      - mariadb_data:/var/lib/mysql
      # The init script mount remains the same
      - ./init-db:/docker-entrypoint-initdb.d

volumes:
  mariadb_data:
```

**Note**: The first volume under `db` (`- mariadb_data:/var/lib/mysql`) overrides the bind mount specified in the main `docker-compose.yml` file.

**Step 3: Create a Production Environment File**

Create a `.env` file on the server and add your production database password.

```
# .env (on the server)
MARIADB_ROOT_PASSWORD=your_strong_production_password
```

**Step 4: Launch the Application**

Now, start the application using both compose files. The production file will override the base file.

```bash
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
```

Your LAMP stack is now running in production using a secure and efficient named volume for the database.
