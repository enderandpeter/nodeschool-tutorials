# nodeschool.io docker context

A Dockerfile and some submodules of nodeschool projects.

You can build and run it with a command like the following, starting in the working directory:

    docker build -t enderandpeter/nodeschool .

## Windows
    docker run -p 8080:80 -v //C/Users/me/nodetutorials:/home/node/www --name=nodeschool --restart=always -i enderandpeter/nodeschool

## Linux or OS X
    docker run -p 8080:80 -v /path/to/nodetutorials:/home/node/www --name=nodeschool --restart=always -i enderandpeter/nodeschool

You should be able to add whatever port bindings and volume bind mountings you would like, and any other paramters needed.

When you run the container, you'll be given a node command prompt. You can detach from the container by pressing Ctrl-P, Ctrl-Q, then you can bash into it with `docker exec -it nodeschool bash`, or run any command you like.
