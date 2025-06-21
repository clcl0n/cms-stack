#!/bin/bash

OCI="oci://ghcr.io/clcl0n"

# Image Service

helm upgrade \
    cms-post-service \
    $OCI/cms-post-service-chart \
    --install \
    --namespace cms \
    --create-namespace \
    -f ./values/cms-post-service-values.yaml
