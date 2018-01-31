# redis-and-mongo
A quick and dirty way of having a redis and a mongo server.

## how to use it

1. Install docker
2. Decide where you're going to store the data on your computer, I'll call it /path/to/data
3. Create a `docker-compose.yml` file with the following contents:

```
version: '2'
services:
  redis-and-mongo:
    image: 'g3rv4/redis-and-mongo'
    restart: always
    hostname: 'redis-and-mongo'
    ports:
      - '27017:27017'
      - '28017:28017'
      - '6379:6379'
    volumes:
      - '/path/to/data:/data'
```

4. Run `docker-compose up -d`

And that's it! you have an auto reloading container that runs both redis and mongo on the default ports.
