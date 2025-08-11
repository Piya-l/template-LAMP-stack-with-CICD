# Running the Docker Image

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