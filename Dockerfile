# Container image that runs your code
FROM FROM gcr.io/tekton-releases/github.com/tektoncd/pipeline/cmd/resolvers:v0.41.3

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
