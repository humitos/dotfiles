#!/bin/bash

cd ~/Source/blog/nikola
source /usr/local/bin/virtualenvwrapper.sh
workon blog
nikola new_post
nikola auto
