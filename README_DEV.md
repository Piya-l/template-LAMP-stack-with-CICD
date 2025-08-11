# Development Setup

This document provides instructions for setting up and running the LAMP stack for local development.

## How to Run the Development Environment

This project can be run using Docker Compose or by manually starting the Docker containers.

### Using Docker Compose (Recommended)

1.  **Start the services:**
    ```bash
    docker-compose up -d
    ```
    This will start the Apache and MySQL services in detached mode.

2.  **Access the application:**
    Open your web browser and navigate to `http://localhost:8080` (or the port you've configured).

3.  **Stop the services:**
    ```bash
    docker-compose down
    ```

### Using Shell Scripts

This project includes `start.sh` script for manual control over the Docker containers.

1.  **Start the services:**
    ```bash
    ./start.sh
    ```
    This script starts the Apache and MySQL containers.

2.  **Access the application:**
    Open your web browser and navigate to `http://localhost:8080` (or the port you've configured).

3.  **Stop the services:**
    ```bash
    ./stop.sh
    ```
    This script stops and removes the Docker containers.

## How to Build the Docker Image

To build the Docker image for this project, you can use Docker Compose or the provided build script.

### Using Docker Compose

1.  **Build the Docker images:**
    ```bash
    docker-compose build
    ```

### Using Shell Scripts

1.  **Build the Docker image:**
    ```bash
    ./build.sh
    ```
    This script builds the `template-lamp-stack` Docker image.