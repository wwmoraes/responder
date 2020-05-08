# HTTP Responder/Rejector

A dead-simple blackhole "web server" that responds all requests with the set HTTP status.

## y u dis

Some scalable scenarios require applications exposing itself to the internet, but you still need
to "disable" some endpoints on the public internet. You can do so on your application, on your
front-end server, or you can use this.

A real-world scenario is a kubernetes exposed application, which uses an ingress that binds `/`,
but some endpoints are internal ones.

## build and use

```shell
docker build -t rejector .
docker run --rm -it -p 8080:80 rejector
```

## Configuration

All settings can be done through environment variables.

### Environment variables

| Name           | Default value   | Description                                |
|----------------|-----------------|--------------------------------------------|
| `HTTP_VERSION` | _1.1_           | the HTTP version to use on the header      |
| `HTTP_STATUS`  | _403 Forbidden_ | the HTTP response code                     |
| `PORT`         | _80_            | the port where the server should listen to |
