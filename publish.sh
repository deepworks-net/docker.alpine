#!/bin/sh
DOCKER_UTILS_TAG_EM=${DOCKER_UTILS_TAG_EM:-YES}
DOCKER_UTILS_PUBLISH=${DOCKER_UTILS_PUBLISH:-YES}
#DOCKER_UTILS_DEBUG=${DOCKER_UTILS_DEBUG:-YES}

# Load functions
. "scripts/utils/funcs.sh"

# Load variables
MSYS_NO_PATHCONV=1 GET_ENV_VARS ".env"

# Publish Images
echo "Publishing $IMAGE_NAME - $IMAGE_VERSION"
BTP_IMAGE --image-name "$IMAGE_NAME" \
            --image-version "$IMAGE_VERSION" \
            --publish "ONLY"

