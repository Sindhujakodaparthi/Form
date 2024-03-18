# Use the official Jenkins LTS image as the base image
FROM --platform=linux/amd64 node:18-alpine as builder

# Install prerequisites for Docker
RUN apt-get update && \
    apt-get install -y apt-transport-https \
                       ca-certificates \
                       curl \
                       gnupg \
                       lsb-release

# Add Docker's official GPG key
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add Docker repository to sources.list
RUN echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

COPY form.html /var/www/html

