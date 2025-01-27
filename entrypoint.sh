#!/bin/bash

# GitHub Actions runner configuration
RUNNER_NAME=${RUNNER_NAME:-$(hostname)}
RUNNER_WORK_DIRECTORY=${RUNNER_WORK_DIRECTORY:-_work}
GITHUB_URL=${GITHUB_URL}
RUNNER_TOKEN=${RUNNER_TOKEN}

# Configure the runner
./config.sh --url "${GITHUB_URL}" --token "${RUNNER_TOKEN}" --name "${RUNNER_NAME}" --work "${RUNNER_WORK_DIRECTORY}" --unattended --replace

# Run the runner
./run.sh