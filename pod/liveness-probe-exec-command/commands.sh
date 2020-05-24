curl --output busybox.pod.yml https://raw.githubusercontent.com/LimKianAn/k8s-cli-commands/master/pod/liveness-probe-exec-command/busybox.pod.yml
k apply --filename busybox.pod.yml
k describe pod liveness-probe-exec-command # Events: ...
k delete --filename busybox.pod.yml