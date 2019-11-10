# Container image that runs your code
FROM alpine:3.10

# Install jq
RUN apk add --no-cache bash jq

# Install pull-request
RUN npm install --global pull-review

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
