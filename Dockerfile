FROM node

RUN apt update \
  && apt install --yes apt-file vim plocate man-db \
  && apt-file update \
  && npm --location=global install npm \
  && npm --location=global update yarn \
  && npm --location=global install corepack
