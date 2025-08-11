# template-LAMP-stack-with-CICD

This project provides a template for a LAMP (Linux, Apache, MySQL, PHP) stack, integrated with a Continuous Integration/Continuous Deployment (CI/CD) pipeline using Docker and GitHub Actions.

## Getting Started

*   For instructions on setting up and running the project for **local development**, please refer to [README_DEV.md](README_DEV.md).
*   For details on the **deployment process and CI/CD pipeline**, including Docker Hub integration, please refer to [README_DEPLOY.md](README_DEPLOY.md).

## CI/CD Overview

This project leverages GitHub Actions to automate the build, test, and deployment processes. Upon changes to the `main` branch, the CI/CD pipeline automatically builds the Docker image, pushes it to Docker Hub, and updates the Docker Hub repository description.

## Key Configuration Files

Here's a list of important configuration files within this project:

### Docker Compose Related Files

*   `docker-compose.yml`: Defines the multi-container Docker application (Apache, MySQL).

### Build Related Files

*   `Dockerfile`: Defines how the PHP/Apache Docker image is built.
*   `build.sh`: A shell script to build the Docker image locally.

### GitHub Actions Related Files

*   `.github/workflows/main.yml`: The main workflow definition for the CI/CD pipeline.