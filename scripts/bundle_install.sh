#!/bin/bash
# File name: bundle_install.sh

source ./config.conf

cd $location

echo "Updating Gemfile.lock"

bundler install