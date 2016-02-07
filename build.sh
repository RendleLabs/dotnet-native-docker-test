#! /usr/bin/env bash

# Restore packages
dotnet restore

# Build the native executable
dotnet build --native

# Build the Docker image
docker build -t dotnet-native-docker-test .

# Run the Docker container
docker run -ti dotnet-native-docker-test
