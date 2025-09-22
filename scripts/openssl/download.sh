#!/usr/bin/env bash

source ${SCRIPTS_DIR}/common-functions.sh


downloadTarArchive \
  "openssl" \
  "https://github.com/openssl/openssl/releases/download/openssl-3.5.3/openssl-3.5.3.tar.gz"
