#!/bin/bash
set -e

IMAGE_TAG=$1
TASK_FAMILY="app-task"

aws ecs describe-task-definition --task-definition $TASK_FAMILY > task-def.json

jq --arg IMG_TAG "$IMAGE_TAG" \
'.taskDefinition.containerDefinitions[0].image |= sub(":[^:]+$"; ":" + $IMG_TAG)' task-def.json > ecs-task-def.json

aws ecs register-task-definition \
  --cli-input-json file://ecs-task-def.json > /dev/null
