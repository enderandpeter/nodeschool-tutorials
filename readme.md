# nodeschool.io docker context

A Dockerfile and some submodules of nodeschool projects.

You can build and run it with a command like the following, starting in the working directory:

    docker build -t enderandpeter/nodeschool .

## Windows
    docker run -p 8080:80 -v //C/Users/me/nodetutorials:/opt/nodeschool --name=nodeschool --restart=always -it enderandpeter/nodeschool

## Linux or OS X
    docker run -p 8080:80 -v /path/to/nodetutorials:/opt/nodeschool --name=nodeschool --restart=always -it enderandpeter/nodeschool

The only difference is how a path is specified.

You should be able to add whatever port bindings and volume bind mountings you would like, and any other paramters needed.

When you run the container, you'll be given a node command prompt. You can detach from the container by pressing Ctrl-P, Ctrl-Q, then you can bash into it with `docker exec -it nodeschool bash`, or run any command you like.

You can also run bash to keep the terminal up while you operate within:

```
cd /path/to/nodetutorials
docker run -p 8080:80 -v .:/opt/nodeschool --name=nodeschool --restart=always -it enderandpeter/nodeschool bash
```

To keep the container running in the background, issue a command to it that will keep it up, such as bash

```
cd /path/to/nodetutorials
docker run -p 8080:80 -v .:/opt/nodeschool --name=nodeschool --restart=always -td enderandpeter/nodeschool bash
```

Now you can latter issue commands in the running container:

```
docker exec -it nodeschool bash
```