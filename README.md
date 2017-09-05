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

Change the Telnet to the name of the container you can grab this by typing

```
sudo docker ps
```



-----
```
docker exec -i -t Telnet /bin/ash

cat passwds.txt
```
