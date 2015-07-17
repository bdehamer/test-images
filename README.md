# test-images

Super-simple Docker images for testing purposes.

## signal-test

Used to demonstrate how different POSIX signals can be sent to a Docker container via the `docker stop` and `docker kill` commands.
This image starts a script that goes into an infinite loop waiting for one of the following signals to be received:

* SIGHUP
* SIGINT
* SIGQUIT
* SIGABRT
* SIGTERM
* SIGUSR1
* SIGUSR2
* SIGSTOP

When any of the above signals is received, the script will echo the name of signal and terminate.

```
docker run -d bdehamer/signal-test
```

## simple-server

Basic HTTP server which listens on TCP port 8888 and returns the string "hello world".

```
docker run -d -p 8888:8888 bdehamer/simple-server
```
