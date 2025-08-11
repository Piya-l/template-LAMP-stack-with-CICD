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

## Running the Docker Image

Once the Docker image has been built and pushed to Docker Hub via the CI/CD pipeline, you can pull and run it on any Docker-enabled environment.

1.  **Pull the Docker image:**
    ```bash
    docker pull piya-l/template-lamp-stack-with-cicd:latest
    ```

2.  **Run the Docker container:**
    ```bash
    docker run -p 8080:80 -d piya-l/template-lamp-stack-with-cicd:latest
    ```
    This command will:
    *   `-p 8080:80`: Map port 8080 on your host to port 80 in the container (where Apache is running).
    *   `-d`: Run the container in detached mode (in the background).

3.  **Access the application:**
    Open your web browser and navigate to `http://localhost:8080`.

4.  **Stop the container:**
    To stop the running container, first find its ID:
    ```bash
    docker ps
    ```
    Then, stop it using its ID (replace `<container_id>` with the actual ID):
    ```bash
    docker stop <container_id>
    ```