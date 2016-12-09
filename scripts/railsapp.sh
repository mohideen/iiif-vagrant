#!/bin/bash

cd /apps/iiif/pcdm-manifests
gem install bundler
bundle install

openssl s_client -connect fcrepolocal:443 \
    | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' \
    > /apps/iiif/pcdm-manifests/fcrepolocal.pem
