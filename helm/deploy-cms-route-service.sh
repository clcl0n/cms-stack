#!/bin/bash

OCI="oci://ghcr.io/clcl0n"

# Image Service

helm upgrade \
    cms-route-service \
    $OCI/cms-route-service-chart \
    --install \
    --namespace cms \
    --create-namespace \
    -f ./values/cms-route-service-values.yaml
