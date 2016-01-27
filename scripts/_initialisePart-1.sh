#!/bin/bash
# File name: _initialisePart-1.sh

source ./config.conf

cd $location

iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

echo -e "Close this window and open '_initialisePart-2'"

read close