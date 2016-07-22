# Concourse Docker

Creates a [Docker](https://www.docker.com/) image to run
[Concourse](http://concourse.ci) in.

## Usage

This image simply packages the [Concourse standalone
binary](http://concourse.ci/binaries.html) and runs it as the `ENTRYPOINT`,
wrapped by `dumb-init` to reap dead container processes.

### Quick-start with Docker Compose

```sh
./generate-keys.sh
export CONCOURSE_LOGIN=concourse
export CONCOURSE_PASSWORD=changeme
docker-compose up
```

Then, browse to [http://127.0.0.1:8080](http://127.0.0.1:8080).

For further configuration, run `web --help` or `worker --help`.

See [Using Concourse](https://concourse.ci/using-concourse.html) to
get started.
