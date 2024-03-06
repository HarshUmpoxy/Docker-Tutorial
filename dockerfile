# Use the Ubuntu base image
FROM ubuntu:latest

# Author/Maintainer information
LABEL maintainer="Harsh harsh-kumar@pluralsight.com"

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Expose port 80
EXPOSE 80

# Copy custom Nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Set CMD to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]






# # Start Nginx in the foreground
# nginx -g "daemon off;"

# chmod +x entrypoint.sh

# # Set the entrypoint to the custom script
# ENTRYPOINT ["/path/to/entrypoint.sh"]