# Remove containers
docker ps --all
docker container stop <container ID>
docker container rm <container ID>

# Remove images
docker image ls
docker image rm <image ID>

# Go to where Dockerfile is

# Build image locally
docker image build . --tag node-server:0.0

# Run container using local image
docker container run -d -p 8080:8080 node-server:0.0

# Build image locally and push to docker hub
docker image build . --tag limkianandocker/node-server:0.0

# Apply Deployment
k apply --filename deployment.yml

k get all

# Map local port 8080 (former) to remote port 8080 in the container (latter)
k port-forward pod/node-server-9df6c47ff-bwwvv 8080:8080
