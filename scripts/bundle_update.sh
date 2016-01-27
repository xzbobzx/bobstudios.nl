#!/bin/bash
# File name: bundle_update.sh

source ./config.conf

cd $location

echo -e "Gem to update: (press space + enter to update all)"

read update

bundler update $gemUpdate