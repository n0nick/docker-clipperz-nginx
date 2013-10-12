# docker-clipperz

A Dockerfile that installs [Clipperz community-edition](https://github.com/clipperz/password-manager).

## Installation

```
$ git clone https://github.com/n0nick/docker-clipperz-nginx
$ cd docker-clipperz
$ sudo docker build -t="docker-clipperz-nginx" .
```

## Usage

To spawn a new instance of clipperz:

```bash
$ sudo docker run -d docker-clipperz-nginx
```

You'll see an ID output like:
```
d404cc2fa27b
```

Use this ID to check the port it's on:
```bash
$ sudo docker port d404cc2fa27b 80 # Make sure to change the ID to yours!
```

This command returns the container ID, which you can use to find the external port you can use to access Clipperz from your host machine:

```
$ docker port <container-id> 80
```

You can the visit the following URL in a browser on your host machine to get started:

```
http://127.0.0.1:<port>
```
