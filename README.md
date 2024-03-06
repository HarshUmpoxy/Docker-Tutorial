Welcome to the Learn in Public Repository

Let's learn Docker...

# Creating a load balancer

## Task 1
Create a docker file such that:
Use ubuntu:latest image
Add File author/maintainer
Install Nginx (apt-get update && apt-get install nginx -y)
Use the 'Expose' keyword to document that port 80 is to be exposed while running the container
Use CMD or ENTRYPOINT or both to replace the content of  var/www/index.html file with the IP address of the container and run the Nginx service
Build the image with the name "Nginx-ip" and deploy a container

## Verify your work
Deploy container using docker run command and publish port 80 to host port 80. When you hit instance IP from your browser you should be able to see the IP address instead of the Nginx welcome page


## Task 2
Now create a docker-compose file that runs two services "service1" and "service2". "service1" should use the image "nginx-ip" created above. "service2" should use the image "nginx:latest". Expose port 80 of "service2" to port 80 of the host. Expose port 80 of "service1" dynamically to the host port. Now deploy the docker-compose file with four replicas of service1 using docker-compose up -d --scale service1=4 command.
Enter inside the container of "service2" using docker exec -it <container  name> /bin/bash. Now change its configuration file such that this service acts as a load balancer for containers of service two. (Hint: For that, you need to set proxy pass as "http:service1:80" in a correct configuration file)


## Verify your work
When you hit the instance IP at port 80 from the browser, you should get a webpage that contains an IP address. Every time you hit the browser you must get a different IP turn-by-turn. This demonstrates that your service2 is acting as a load balancer for containers of service1.
Now play with the configuration file of the Nginx web server hosted in the container of service2 and experiment with the different types of load balancing.

Round Robin
IP Hash
Weighted
Least connected

### SWITCH TO THE SOLUTION BRANCH FOR REVIEW