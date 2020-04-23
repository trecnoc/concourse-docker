#!/bin/sh
case $1 in
web)
  export CONCOURSE_SESSION_SIGNING_KEY=/concourse-keys/session_signing_key
  export CONCOURSE_TSA_AUTHORIZED_KEYS=/concourse-keys/authorized_worker_keys
  export CONCOURSE_TSA_HOST_KEY=/concourse-keys/tsa_host_key
  ;;
worker)
  export CONCOURSE_TSA_PUBLIC_KEY=/concourse-keys/tsa_host_key.pub
  export CONCOURSE_TSA_WORKER_PRIVATE_KEY=/concourse-keys/worker_key
  ;;
quickstart)
  export CONCOURSE_SESSION_SIGNING_KEY=/concourse-keys/session_signing_key
  export CONCOURSE_TSA_AUTHORIZED_KEYS=/concourse-keys/authorized_worker_keys
  export CONCOURSE_TSA_HOST_KEY=/concourse-keys/tsa_host_key
  export CONCOURSE_TSA_PUBLIC_KEY=/concourse-keys/tsa_host_key.pub
  export CONCOURSE_TSA_WORKER_PRIVATE_KEY=/concourse-keys/worker_key
  ;;
esac
dumb-init /usr/local/concourse/bin/concourse $@
