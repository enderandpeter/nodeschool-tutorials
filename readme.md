# nodeschool.io docker context

A Dockerfile and some submodules of nodeschool projects.

You can build and run it with a command like the following, starting in the working directory:

    docker build -t enderandpeter/nodeschool .

## Windows
    docker run -p 8080:80 -v //C/Users/me/nodetutorials:/home/node/www --name=nodeschool --restart=always -i enderandpeter/nodeschool

## Linux or OS X
    docker run -p 8080:80 -v /path/to/nodetutorials:/home/node/www --name=nodeschool --restart=always -i enderandpeter/nodeschool

You should be able to add whatever port bindings and volume bind mountings you would like, and any other paramters needed.

Typically, you'd run this in detached state, but if you do on Windows at least, then it will keep restarting. You have to run it in interactive/attached mode, then press Ctrl+C, then you can bash into it with `docker exec -it nodeschool bash`, or do whatever you like with the running process.