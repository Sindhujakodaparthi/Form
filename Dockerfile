# Use the official Jenkins LTS image as the base image
FROM --platform=linux/amd64 node:18-alpine as builder

COPY form.html /var/www/html

EXPOSE 80
