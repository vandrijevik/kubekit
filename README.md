`kubekit` is a Docker image to help investigate a Kubernetes cluster from the inside.

`kubekit` is intended to be run as an interactive Pod in a cluster, and comes with tools to help diagnose and troubleshoot a cluster’s behavior. This repository contains the `Dockerfile` to build a `kubekit` image, as well as GitHub Actions to publish it to a Docker repository so that it can be used publicly.

### Running `kubekit`

#### Getting Started

We can start a one-time `kubekit` Pod with the command:
```
kubectl run kubekit --image=vandrijevik/kubekit -i -t --rm
```
After we exit the bash shell, the Pod will automatically be deleted.

#### Long-running `kubekit` Pod

If we want a `kubekit` Pod that continues to run even after exiting the shell, we omit `--rm`:
```
kubectl run kubekit --image=vandrijevik/kubekit -i -t
```

Afterwards, we can connect to the running Pod by executing:
```
kubectl attach kubekit -c kubekit -i -t
```

The Pod will keep running until we delete it, which we can do with the command:
```
kubectl delete pod/kubekit
```
