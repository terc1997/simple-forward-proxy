source scripts/env.sh

podman login -u $USER -p $APIKEY $NAMESPACE

podman tag localhost/$IMAGE_NAME $NAMESPACE/$IMAGE_NAME:latest

podman push $NAMESPACE/$IMAGE_NAME:latest