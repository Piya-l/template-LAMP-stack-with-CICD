# template-LAMP-stack-with-CICD

This project provides a template for a LAMP (Linux, Apache, MySQL, PHP) stack, integrated with a Continuous Integration/Continuous Deployment (CI/CD) pipeline using Docker and GitHub Actions.

## Getting Started

*   For instructions on setting up and running the project for **local development**, please refer to [README_DEV.md](README_DEV.md).
*   For details on the **deployment process and CI/CD pipeline**, including Docker Hub integration, please refer to [README_DEPLOY.md](README_DEPLOY.md).

## CI/CD Overview

This project leverages GitHub Actions to automate the build, test, and deployment processes. Upon changes to the `main` branch, the CI/CD pipeline automatically builds the Docker image, pushes it to Docker Hub, and updates the Docker Hub repository description.

## Project Configuration

This section outlines key configuration files that allow you to customize the project's behavior.

*   `.env.example`: This file serves as a template for environment variables. Copy it to `.env` and modify the values to configure database credentials, application settings, and other environment-specific parameters. **Do not commit your `.env` file to version control.**
*   `config/apache-custom.conf`: This file allows for custom Apache configurations. Any directives placed here will be included in the Apache server configuration within the Docker container, enabling you to override default settings or add new virtual hosts, rewrite rules, etc.
*   `database/.my-healthcheck.cnf`: This file is used by the MySQL container's healthcheck to connect to the database and verify its status. It contains credentials specifically for the healthcheck process.

## Key Configuration Files

Here's a list of important configuration files within this project:

### Docker Compose Related Files

*   `docker-compose.yml`: Defines the multi-container Docker application (Apache, MySQL).

### Build Related Files

*   `Dockerfile`: Defines how the PHP/Apache Docker image is built.
*   `build.sh`: A shell script to build the Docker image locally.

### GitHub Actions Related Files

*   `.github/workflows/main.yml`: The main workflow definition for the CI/CD pipeline.