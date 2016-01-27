#!/bin/bash
# File name: _initialisePart-2.sh

echo "Installing Ruby"

choco install ruby -y

echo "Installing Jekyll"

gem install jekyll

echo -e "You're ready to go! Run 'create_post.sh' to generate blog posts, or 'start_local_server' to preview the site locally."

read close
