# Minimal repro for modsec problem

## Problem
Nginx is never cleaning it's request body cache when compiled with modsec. Currently it stores files to directory /tmp.

## Start
### docker-compose
```
./deploy.sh
```

### kubernetes
U need to have running k8s cluster first
```
./deploy.sh kubernetes
```

### Simulate problem
Just send request which have body payload larger then 1k
For example run:
```
curl -X POST -d @test/request.txt
```

