#!/bin/bash
set -e

docker run --rm jenkins-ci-cd-app pytest
