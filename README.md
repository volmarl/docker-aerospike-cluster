# Usage

Pre-requisite:

Have a docker swarm mode configured:
```
docker swarm init
```

https://docs.docker.com/engine/swarm/swarm-tutorial/





1. Verify your deployment:
    `docker stack ls`
1. Verify your services:
    `docker service ls`
1. Take a look at your containers:
    `docker ps`
1. To remove the docker swarm stack:
`docker stack rm aerospike`
1. Deploy your aerospike stack
```bash
docker stack deploy -c aerospike.yml aerospike  
```


