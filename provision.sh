#!/usr/bin/env bash

# update aptitude
echo '----------------------------------------------'
echo ' APTITUDE UPDATE'
echo '----------------------------------------------'
aptitude update

# install packages
echo '----------------------------------------------'
echo ' INSTALLING PACKAGES'
echo '----------------------------------------------'
aptitude install -y vim bash curl git patch bzip2 build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev libcurl3-dev imagemagick libmagickwand-dev libpcre3-dev

#install rvm
echo '----------------------------------------------'
echo ' RVM'
echo '----------------------------------------------'
\curl -sSL https://get.rvm.io | bash -s stable