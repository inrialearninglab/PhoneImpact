#!/bin/bash

# Build the Docker image
docker build -t phone-impact .

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image built successfully."

    # Run the Docker container
    docker run -v "$(pwd)":/app phone-impact
else
    echo "Docker image build failed."
fi
