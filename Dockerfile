# Use NGINX as the base image
FROM nginx:latest

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy a custom configuration file from the current directory
COPY ./NGINX /etc/nginx/conf.d/


# Expose port 9080
EXPOSE 9080
