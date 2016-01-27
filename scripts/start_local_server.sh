#!/bin/bash
# File name: start_local_server.sh

source ./config.conf

cd $location

GRE='\033[1;32m'
NC='\033[0m' # No Color

printf 'Note:\n'
printf "Open the site with this address: ${GRE}http://localhost:4000${NC}"
printf '\n\n------\n\n'

# jekyll serve --config _config.yml,_config_dev.yml
bundle exec rake site:watch