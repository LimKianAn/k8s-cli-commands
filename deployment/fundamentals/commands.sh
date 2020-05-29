curl --output nginx.deployment.yml https://raw.githubusercontent.com/LimKianAn/k8s-cli-commands/master/deployment/nginx.deployment.yml
k create --filename nginx.deployment.yml --save-config
k get all
k describe deployment nginx-again
k get deployments --show-labels # LABELS not working
k get deployments -l app=nginx-again
k scale --filename nginx.deployment.yml --replicas=4
k delete deployments nginx-again
k apply --filename nginx.deployment.yml