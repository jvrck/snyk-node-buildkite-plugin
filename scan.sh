#!/usr/bin/env bash

npm ci
snyk test --severity-threshold=$SEVERITY --org=$ORG