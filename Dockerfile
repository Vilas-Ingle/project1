# Use a lightweight Linux version
FROM alpine:latest

# Install bash (Alpine doesn't have it by default)
RUN apk add --no-cache bash

# Set the working directory inside the container
WORKDIR /app

# Copy your script from your computer into the container
COPY status_check.sh .

# Make the script executable
RUN chmod +x status_check.sh

# Tell Docker to run the script when the container starts
CMD ["./status_check.sh"]
