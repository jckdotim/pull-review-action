# Container image that runs your code
FROM node:16

# Install jq
RUN apt-get update && apt-get install jq -y

# Install pull-request
RUN npm install --global pull-review@^2.6.0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
