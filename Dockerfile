# Use the official nginx image as the base image
FROM nginx

# Remove the default NGINX configuration file
# RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration file
# COPY nginx.conf /etc/nginx/conf.d/

# Copy your HTML/CSS/JS files to NGINX default public directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Command to run NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
