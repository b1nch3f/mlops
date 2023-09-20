# build docker image
1. docker build -t jupyterlab-base:v1.1.1 .

# run docker container
1. docker run -v .:/home -p 8888:8888 jupyterlab-base:v1.1.1

# run docker container via docker-compose
1. Bring the container up ```docker compose up -d```

# run docker container via kubernetes
1. ```kubectl apply -f .\k8s\```
2. get pods ```kubectl get pods```
3. get NodePort ```kubectl get svc dev-container-service```
4. get jupyter access token ```kubectl logs <POD>```
5. delete resources ```kubectl delete -f .\k8s\```

### Note:
1. I'm using Docker desktop for Windows with WSL2
2. For docker registry i'm using docker hub
3. For kubernetes i'm using docker desktop for kubernetes
