#!/bin/bash

OCI="oci://ghcr.io/clcl0n"

# Image Service

helm upgrade \
    cms-site-service \
    $OCI/cms-site-service-chart \
    --install \
    --namespace cms \
    --create-namespace \
    -f ./values/cms-site-service-values.yaml
