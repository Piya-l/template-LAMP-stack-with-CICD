# template-LAMP-stack

This is a template for a LAMP (Linux, Apache, MySQL, PHP) stack using Docker.

## How to Run This Project

This project can be run using Docker Compose or by manually building and starting the Docker containers.

### Using Docker Compose (Recommended)

1.  **Build the Docker images:**
    ```bash
    docker-compose build
    ```
2.  **Start the services:**
    ```bash
    docker-compose up -d
    ```
    This will start the Apache and MySQL services in detached mode.

3.  **Access the application:**
    Open your web browser and navigate to `http://localhost:8080` (or the port you've configured).

4.  **Stop the services:**
    ```bash
    docker-compose down
    ```

### Using Shell Scripts

This project includes `build.sh` and `start.sh` scripts for manual control over the Docker containers.

1.  **Build the Docker image:**
    ```bash
    ./build.sh
    ```
    This script builds the `template-lamp-stack` Docker image.

2.  **Start the services:**
    ```bash
    ./start.sh
    ```
    This script starts the Apache and MySQL containers.

3.  **Access the application:**
    Open your web browser and navigate to `http://localhost:8080` (or the port you've configured).

4.  **Stop the services:**
    ```bash
    ./stop.sh
    ```
    This script stops and removes the Docker containers.