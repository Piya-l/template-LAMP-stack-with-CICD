# My PHP Application

This is a simple PHP application running on Apache.

## How to Run

To run this application using Docker, make sure you have Docker installed, then execute the following command:

```bash
docker run -p 8080:80 piyapiya/my-php-app:latest
```

After running the command, open your web browser and navigate to `http://localhost:8080`.

## CI/CD

This project uses GitHub Actions to automatically build and push Docker images to Docker Hub on every push to the `main` branch.
