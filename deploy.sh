if [ "$1" = "kubernetes" ]; then
	kubectl apply -f manifests
else
	docker-compose up
fi
