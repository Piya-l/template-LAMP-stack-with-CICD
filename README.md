# LAMP Stack Docker Template

This project provides a comprehensive template for a LAMP (Linux, Apache, MariaDB, PHP) stack using Docker. It's designed for easy local development and includes a CI/CD pipeline using GitHub Actions for automated builds.

## Core Features

- **Dockerized Environment**: All services (PHP/Apache, MariaDB, phpMyAdmin) are containerized for consistency and isolation.
- **Developer Focused**: Uses `docker-compose` for simple, one-command startup.
- **Persistent Database**: Uses a local bind mount (`./database`) for persistent data during development.
- **CI/CD Ready**: Includes a GitHub Actions workflow to automatically build and push the PHP application image to Docker Hub.

## Project Structure

```
/
├── .github/            # GitHub Actions CI/CD workflow
├── database/           # Holds local database data (ignored by Git)
├── init-db/            # SQL scripts for one-time database initialization
├── php/                # Contains the PHP application source and Dockerfile
│   ├── src/            # Your PHP application code
│   └── Dockerfile      # Builds the custom PHP/Apache image
├── .env.example        # Template for environment variables
├── .gitignore          # Specifies files for Git to ignore
├── docker-compose.yml  # Orchestrates all services for development
└── ...
```

## Getting Started

1.  **For local development**, see the detailed setup guide in [**README_DEV.md**](README_DEV.md).
2.  **For deployment and CI/CD information**, refer to the production guide in [**README_DEPLOY.md**](README_DEPLOY.md).
