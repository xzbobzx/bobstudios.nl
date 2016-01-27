#!/bin/bash
# File name: setup.sh

source ./config.conf

cd $location

echo -e "Gem to update: (press space + enter to update all)"

read gemUpdate

bundler update $gemUpdate