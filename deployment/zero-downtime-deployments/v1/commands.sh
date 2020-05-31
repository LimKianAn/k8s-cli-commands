# Following the commands in v0

# Overwrite v0 with v1. Cluster size should be be enough for new replica number.
k apply --filename deployment.yml

# Map port to check if the contents have been updated.
k port-forward pod/node-server-6564c74794-xtsjq 8080:8080