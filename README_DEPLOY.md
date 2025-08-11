# Deployment and CI/CD

This document outlines the continuous integration and continuous deployment (CI/CD) pipeline for this project.

## GitHub Actions Workflow

The project uses GitHub Actions for its CI/CD pipeline, defined in `.github/workflows/main.yml`. This workflow is triggered on pushes to the `main` branch and can also be manually dispatched.

### Workflow Steps:

1.  **Checkout code:** Fetches the repository code.
2.  **Make build script executable:** Ensures `build.sh` can be run.
3.  **Build Docker image:** Executes `./build.sh` to build the Docker image.
4.  **Log in to Docker Hub:** Authenticates with Docker Hub using secrets (`DOCKER_USERNAME`, `DOCKER_PASSWORD`).
5.  **Tag and Push Docker image:** Tags the built Docker image and pushes it to Docker Hub (`piya-l/template-lamp-stack-with-cicd:latest`).
6.  **Update Docker Hub Description:** Uses the `peter-evans/dockerhub-description` action to update the Docker Hub repository's description using the content of the main `README.md` file.

## Docker Hub Integration

The CI/CD pipeline automatically builds and pushes the Docker image to Docker Hub. The `README.md` from this repository is used to populate the description on Docker Hub, providing up-to-date information on how to use the image.

**Important:** Ensure that your GitHub repository secrets (`DOCKER_USERNAME`, `DOCKER_PASSWORD` or an access token) are correctly configured and have the necessary permissions to push to the Docker Hub repository (`piya-l/template-lamp-stack-with-cicd`). If 2FA is enabled on your Docker Hub account, you must use an access token.