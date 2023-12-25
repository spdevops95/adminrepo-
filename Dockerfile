# Use an official base image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y \
    tree package
    

# Install terr dependencies
RUN all tree package dependencies

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World



