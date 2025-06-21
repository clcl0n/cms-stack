#!/bin/bash

OCI="oci://ghcr.io/clcl0n"

# Image Service

helm upgrade \
    cms-sitemap-service \
    $OCI/cms-sitemap-service-chart \
    --install \
    --namespace cms \
    --create-namespace \
    -f ./values/cms-sitemap-service-values.yaml
