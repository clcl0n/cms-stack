#!/bin/bash

OCI="oci://ghcr.io/clcl0n"

# Image Service

helm upgrade \
    cms-image-service \
    $OCI/cms-image-service-chart \
    --install \
    --namespace cms \
    --create-namespace \
    -f ./values/cms-image-service-values.yaml
