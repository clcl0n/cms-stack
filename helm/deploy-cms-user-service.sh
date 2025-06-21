#!/bin/bash

OCI="oci://ghcr.io/clcl0n"

# Image Service

helm upgrade \
    cms-user-service \
    $OCI/cms-user-service-chart \
    --install \
    --namespace cms \
    --create-namespace \
    -f ./values/cms-user-service-values.yaml
