.PHONY: up

up:
	eval '$(minikube -p minikube docker-env)'
	docker build -f Dockerfile -t api_server
	kubectl create -f nginx-app.yaml
	kubectl apply -f kube/config-map.yaml
	kubectl create -f nginx-app-service.yaml
