FROM debian:buster
EXPOSE 6379
RUN apt-get update
RUN apt-get install -y redis-server vim
CMD redis-server --maxmemory 256mb --maxmemory-policy allkeys-lru --protected-mode no 
