# Simple Forward Proxy

## Dependencies
- podman
- IBM Cloud CLI
- IBM Cloud Kubernetes Service plugin (ibmcloud ks)
- make


## Description

Simple Apache forward proxy deployed on IBM Kubernetes Service (IKS), using IBM Containter Registry as image source. 

## Running Locally
To run locally, use the command `make build && make run` and it will start running the forward proxy on port 8080.

## Running on Cloud
To deploy, export the variables 
```
export NAMESPACE=<namespace that the image is going to be stored>
export APIKEY=<apikey of IBM Cloud account>
export CLUSTER_NAME=<name of the IKS instance>
```
and run
```
make build && make push && make deploy
```


