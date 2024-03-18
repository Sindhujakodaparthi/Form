# Use the official Jenkins LTS image as the base image
FROM jenkins/jenkins:lts

# Switch to root user
USER root

COPY form.html /var/www/html

USER jenkins
