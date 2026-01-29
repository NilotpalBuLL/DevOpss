## Task 9 – Docker Basics

This task demonstrates basic Docker containerization.

### Steps Performed
- Created a simple Flask application
- Wrote a Dockerfile
- Built a Docker image
- Ran the container and exposed port 5000
- Verified application via browser
- Inspected logs and cleaned up resources

### Commands Used
docker build -t task9-flask-app .
docker run -d -p 5000:5000 --name task9-container task9-flask-app
### Inspect & Logs (Often Ignored, But Important)
docker logs task9-container
docker inspect task9-container

### Stop & Cleanup (Shows Discipline)
docker stop task9-container
docker rm task9-container
docker rmi task9-flask-app
