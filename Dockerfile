# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variable to prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary packages
RUN apt-get update -y && apt-get install -y fortune-mod cowsay

# Copy the shell scripts to the container
COPY install.sh /install.sh
COPY wisecow.sh /wisecow.sh

# Make the scripts executable
RUN chmod +x /install.sh /wisecow.sh

# Expose the port the application will run on
EXPOSE 4499

# Start the application
CMD ["bash", "/wisecow.sh"]
