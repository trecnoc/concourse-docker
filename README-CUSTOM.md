# Custom setup instructions

## Generate Concourse keys

```shell
cd /data/scripts/concourse-docker
./keys/generate
```

## Edit the docker-compose.yml

In `/data/script/concourse-docker`

### Update the local user password

In the web service update the following environment variable by first making the necessary substitutions.

`CONCOURSE_ADD_LOCAL_USER: joe:<SET ME>`

### For AVA server only

#### Update the External URL

In the web service update the following environment variable

`CONCOURSE_EXTERNAL_URL: http://localhost:8080` to `CONCOURSE_EXTERNAL_URL: http://<AVA SERVER>:8080`

#### Set the proxy

In the web and worker services add the following environment variables

`http_proxy: "<AVA PROXY SERVER WITH PORT>"`
`https_proxy: "<AVA PROXY SERVER WITH PORT>"`
`no_proxy: "localhost,127.0.0.1,.ava.local,.dmz.ava.local"`

## Generate the defaults.yml file

In a new file `/data/script/concourse-docker/defaults.yml` add the following content by first making the necessary substitutions

```yaml
registry-image:
  username: trecnoc
  password: <ACCESS TOKEN FROM VAULT>
```
