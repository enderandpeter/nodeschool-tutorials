FROM node
MAINTAINER Spencer Williams <spencer@aninternetpresence.net>

RUN apt-get update \
  && apt-get install -y apt-file vim mlocate man-db \
  && apt-file update \
  && npm install -g create-react-app \
	&& npm install -g learnyounode \
	&& npm install -g scope-chains-closures \
	&& npm install -g functional-javascript-workshop \
	&& npm install -g stream-adventure \
	&& npm install -g expressworks
