# Remove containers
docker ps --all
docker container stop <container ID>
docker container rm <container ID>

# Remove images
docker image ls
docker image rm <image ID>

# Go to where Dockerfile is

# Build image
docker image build . --tag node-server:0.0

# Run container
docker container run -d -p 8080:8080 node-server:0.0
