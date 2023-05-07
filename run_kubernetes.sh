#!/usr/bin/env bash

# Step 1: This is your Docker ID/path
dockerpath=twdockeruser/sklearn_predictor
echo $dockerpath

# Step 2: Run the Docker Hub container with kubernetes
kubectl run skp --image=$dockerpath --port=80

# Step 3: List kubernetes pods
kubectl get pods 

# Step 4: Forward the container port to a host
kubectl port-forward skp 8000:80
