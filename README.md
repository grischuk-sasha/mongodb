# mongodb

1. Pull image from [docker hub](https://hub.docker.com/r/grischuksasha/mongodb/)

`docker pull grischuksasha/mongodb`

2. Now you can run image

`docker run -it grischuksasha/mongodb bash`

## Example docker-compose.yml
```
version: '3'

services:
  mongodb:
    container_name: mongodb
    image: grischuksasha/mongodb
    environment:
      MONGODB_ADMIN_USER: userName
      MONGODB_ADMIN_PASS: userPass
    ports:
      - 27017:27017
    volumes:
      - /var/lib/mongodb:/data/db
      - /var/log/mongodb:/var/log/mongodb
    restart: "always"
```