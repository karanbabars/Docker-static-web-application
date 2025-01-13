# Docker-static-web-application

**1.Set Up the Project Directory:
Create a directory for your project:**

mkdir static-website
cd static-website

**2.Add HTML, CSS, and JavaScript Files:
Inside the directory, create the following files:**

index.html: Main HTML file.
style.css: CSS file for styling.
script.js: JavaScript file for interactivity.

 Create a Dockerfile
Create a Dockerfile:
Add a file named Dockerfile in the project directory.

**Content of Dockerfile:**

# Use the official Nginx image
FROM nginx:latest

# Copy website files to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

**Explanation:**
FROM nginx:latest: Uses the official Nginx image.
COPY . /usr/share/nginx/html: Copies all your website files to Nginx's default directory.
EXPOSE 80: Exposes port 80 for HTTP traffic.

Build the Docker Image
Build the Image:
Run the following command to build the Docker image:

bash
Copy code
docker build -t static-website .

-t static-website: Tags the image as static-website.
.: Refers to the current directory containing the Dockerfile.

Verify the Image:
Check if the image is built successfully:

docker images

 Run the Docker Container:
 Run the Container:
Use the following command to start a container from your image:

docker run -d -p 8080:80 static-website
-d: Runs the container in detached mode.
-p 8080:80: Maps port 80 inside the container to port 8080 on your local machine.

Verify the Container:
Check if the container is running:
docker ps

Test the Deployment
Access the Website:
Open your browser and navigate to:
http://localhost:8080
You should see your static website running!
or
curl http://localhost:8080

