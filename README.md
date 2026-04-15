# Docker Setup Guide

# Prerequisites

Make sure **Docker** is installed on your system.

---

# Build Docker Image

Run the following command to build the Docker image:

```bash
docker build -t <image-name> .
```

### Example:

```bash
docker build -t my-app:1 .
```

---

# Run Docker Container

Run the container using:

```bash
docker run <image-name>
```

### Example:

```bash
docker run my-app
```

---

# Run with Port Mapping (Optional)

If your app runs on a port (e.g., Angular/Nginx):

```bash
docker run -d -p 8080:80 <image-name>
```

Then open:

```
http://localhost:8080
```

---

# Check Running Containers

```bash
docker ps
```

---

# View Logs

```bash
docker logs <container-id>
```

---

# Stop Container

```bash
docker stop <container-id>
```

---

#  Remove Container

```bash
docker rm <container-id>
```

---

# Notes

* Ensure your `Dockerfile` exists in the root directory.
* Use `.dockerignore` to exclude unnecessary files.
* Always rebuild image after code changes.

---

#  Done!

Your Docker container should now be running successfully 🚀
