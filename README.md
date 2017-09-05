# Docker-Telnet-logger
Docker telnet honey pot.

Exposes a fake telnet to port 23 and logs the IP and and passwords used.

To Pull this image
----

```
sudo docker pull txt3rob/docker-telnet-logger
```

To Run this container
---
```
docker run -p 23:23 txt3rob/docker-telnet-logger
```


To view the results
----

Note change Telnet to what ever the name of the container is ... you can find it by going to docker ps


```
docker exec -i -t Telnet /bin/ash

cat passwds.txt
```



