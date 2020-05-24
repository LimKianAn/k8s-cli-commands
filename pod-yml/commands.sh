k create --filename nginx.pod.yml --save-config
k get pod my-nginx --output yaml # yaml with a # metadata: annotations: ...
k describe pod my-nginx # Events: ...
k apply --filename nginx.pod.yml
k exec my-nginx -it -- sh # "-- sh" different from docker

# in sh
ls -al /usr/share/nginx/html
exit

# back to the host
k edit --filename nginx.pod.yml
k delete --filename nginx.pod.yml
k get pods
k get all
