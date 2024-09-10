# Docker playground

This is a place to tinker with concepts related to [containerization](https://www.docker.com/resources/what-container/) and implementations like [Docker](https://www.docker.com/products/docker-desktop/)

## Common commands

### build container images

```sh
docker build marktmilligan/go:1.23.0 .
```

marktmilligan = user or organization
go = container image name
1.23.0 = tag
. = use the [Dockerfile](https://github.com/sharkymark/dockerfiles/blob/main/go/Dockerfile) in the current directory the command is run from

### push container images to a container registry, like dockerhub

```sh
docker push marktmilligan/go:1.23.0
```

The container image and its tags are visible on [dockerhub](https://hub.docker.com/repository/docker/marktmilligan/go/general)

> requires running `docker login` to authenticate to dockerhub

### start a container in foreground in interactive mode

```sh
docker run -it marktmilligan/go:1.23.0
```

> type `exit` to end the shell and stop the container and return to the host where you started the container

`docker run -d marktmilligan/go:1.23.0` starts the container in detached mode with no shell

## Docker in Docker

with [dev container](https://github.com/devcontainers/features/tree/main/src/docker-in-docker)

## Resources

[Docker CLI](https://docs.docker.com/reference/cli/docker/)

[Python Mac versions](https://www.python.org/downloads/macos/)

[dev container spec](https://containers.dev/implementors/json_reference/)

[hello-world image](https://hub.docker.com/_/hello-world)

[Docker\'s container registry called dockerhub](https://hub.docker.com/)

[dev container features](https://github.com/devcontainers/features/tree/main/src
)
## License

This project is licensed under the [MIT License](LICENSE)

## Contributing

### Disclaimer: Unmaintained and Untested Code

Please note that this program is not actively maintained or tested. While it may work as intended, it's possible that it will break or behave unexpectedly due to changes in dependencies, environments, or other factors.

Use this program at your own risk, and be aware that:
1. Bugs may not be fixed
1. Compatibility issues may arise
1. Security vulnerabilities may exist

If you encounter any issues or have concerns, feel free to open an issue or submit a pull request.