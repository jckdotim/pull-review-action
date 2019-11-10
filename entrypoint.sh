#!/bin/sh

set -e

owner=$(jq --raw-output .pull_request.base.repo.owner.login "$GITHUB_EVENT_PATH")
repo=$(jq --raw-output .pull_request.base.repo.name "$GITHUB_EVENT_PATH")
pr_number=$(jq --raw-output .number "$GITHUB_EVENT_PATH")

pull-review https://github.com/$owner/$repo/pull/$pr_number -t $GITHUB_TOKEN
