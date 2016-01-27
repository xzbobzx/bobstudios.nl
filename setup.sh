#!/bin/bash
ECHO 'Locating bobstudios.nl'
. z:/github/bobstudios.nl/
ECHO 'Setting up bobstudios.nl'
jekyll serve --config _config.yml,_config_dev.yml