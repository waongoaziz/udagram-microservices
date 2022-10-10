kubectl apply -f env-configmap.yml
kubectl apply -f env-secrets.yml
kubectl apply -f aws-credentials.yml

kubectl delete svc backend-feed
kubectl delete svc backend-user
kubectl delete svc reverseproxy
kubectl delete svc frontend

kubectl delete deploy backend-feed
kubectl delete deploy backend-user
kubectl delete deploy reverseproxy
kubectl delete deploy frontend

kubectl apply -f feed-deployment.yml
kubectl apply -f user-deployment.yml
kubectl apply -f reverseproxy-deployment.yml
kubectl apply -f frontend-deployment.yml

kubectl apply -f feed-service.yml
kubectl apply -f user-service.yml
kubectl apply -f frontend-service.yml
kubectl apply -f reverseproxy-service.yml

