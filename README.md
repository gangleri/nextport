nextport
========

A simple utility I wrote that makes use of binding to port 0 to get an
avaliable port. I used this with docker to dynamically expose and forward ports 
at runtime using dockers [expose](https://docs.docker.com/reference/run/#expose-incoming-ports) switch.

```
port=`nextport`

docker run \
				 --expose=$port
				 -p$port:$port
				 ...
```

For demo purpose many services/containers were being run on the one server. Each
would register itself with a lookup and having the ability to dynamically allocate
the ports made it easier to manage.

