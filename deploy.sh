if [ "$1" = "kubernetes" ]; then
	kubectl delete -f manifests
	kubectl apply -f manifests
else
	docker-compose up
fi
