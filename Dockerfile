FROM ubuntu:latest AS build

RUN apt-get update
RUN sudo apt-get install -y nodejs

EXPOSE 25565
EXPOSE 8081
EXPOSE 443
EXPOSE 8443
EXPOSE 22

COPY . .
CMD ["npm", "install"]
CMD ["PORT=8080", "npm", "start"]
