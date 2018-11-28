# Docker Presentation

## Proxy

### Repo

https://github.com/jwilder/nginx-proxy

### Instructions

- **Create proxy network** `docker network create proxy`
- **Install** `docker run -d --name proxy --net proxy -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy`

## Commands

- **Run** `docker-compose up`
- **Test** `npm run test`
