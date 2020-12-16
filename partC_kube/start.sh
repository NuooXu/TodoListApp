#!/bin/bash
kubectl delete --all deployments
kubectl delete --all services
kubectl delete --all pods

kubectl apply -f backendmidterm-deployment.yaml
kubectl apply -f redis-deployment.yaml
kubectl apply -f react-midterm-deployment.yaml

kubectl create -f service-backendmidterm-lb.yaml
kubectl create -f service-redis-lb.yaml
kubectl create -f service-react-midterm-lb.yaml

kubectl get svc
# minikube service sa-web-app-lb
minikube service react-midterm-lb
minikube service list 