# Use an Nginx image to serve static files
FROM nginx:latest

# Set environment variable to remove default nginx index page
ENV NGINX_ROOT /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf $NGINX_ROOT/*

# # Copy the built static files into nginx public directory
COPY dist/ $NGINX_ROOT

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
