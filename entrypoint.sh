#!/bin/sh

set -e

if [[ -z "$GITHUB_TOKEN" ]]; then
  echo "Set the GITHUB_TOKEN environment variable."
  exit 1
fi

owner=$(jq --raw-output .pull_request.head.repo.owner.login "$GITHUB_EVENT_PATH")
repo=$(jq --raw-output .pull_request.head.repo.name "$GITHUB_EVENT_PATH")
pr_number=$(jq --raw-output .number "$GITHUB_EVENT_PATH")

pull-review https://github.com/$owner/$repo/pull/$pr_number -t $GITHUB_TOKEN
