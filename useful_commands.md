### Task 1 
To make nginx-ip image from the dockerfile
```
docker build -t nginx-ip .
```
To run this image
```
docker run nginx-ip
```

To see the port address, do docker ps to list down all running containers.

### Task 2

To run all containers defined in docker compose file
```
docker compose up --scale service1=4
```

```
docker ps
```

Go to port 80 (localhost:80 or localhost) and refresh the page to see load balancing

```
docker compose down
```