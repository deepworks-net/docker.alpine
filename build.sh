#!/bin/sh

DOCKER_UTILS_TAG_EM=${DOCKER_UTILS_TAG_EM:-YES}

# Load functions
. "scripts/utils/funcs.sh"

# Load variables
MSYS_NO_PATHCONV=1 GET_ENV_VARS ".env"

echo "Building $IMAGE_NAME - $IMAGE_VERSION"
BTP_IMAGE --image-name "$IMAGE_NAME" \
            --image-version "$IMAGE_VERSION" \
            --service "$SERVICE_NAME" \
            --compose
