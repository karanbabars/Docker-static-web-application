#  Nginx image
FROM nginx:latest

# Copy website files to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
