# nextport

A simple utility I wrote that makes use of binding to port 0 to get an
avaliable port. I used this with docker to dynamically expose and forward ports 
at runtime using dockers [expose](https://docs.docker.com/reference/run/#expose-incoming-ports) switch.

I wrote this in C so that nothing else is required inorder to  run the program.

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


## Installation

```
curl https://raw.githubusercontent.com/gangleri/nextport/master/install.sh | sudo sh
```
The MD5 sum is verified during the installation. You can see this and the SHA1 on
the release information.


## Usage
If it can return a port the program prints the number to stdout if it cannot get
a free port it will print -1 to stdout and exit with a code of 1. 

