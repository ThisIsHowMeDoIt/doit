# REV07: Wed 17 Feb 2021 11:45:40 WIB
# START: Tue Jun 18 14:47:15 WIB 2019
#
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

DEBS="
autoconf
bison 
build-essential
curl
dirmngr
git
gnupg
libcurl4-openssl-dev
libffi-dev 
libgdbm-dev
libncurses5-dev 
libreadline-dev
libssl-dev
libsqlite3-dev 
libyaml-dev 
libxml2-dev
libxslt1-dev
locales-all
make
nodejs
sqlite3
software-properties-common
x11-apps
yarn
zlib1g-dev
"

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg     | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

echo "====== UPDATE  ==========";
apt-get update;
echo "====== UPGRADE ==========";
apt-get dist-upgrade -y;
echo "====== REMOVE  ==========";
apt-get autoremove --purge -y;
echo "====== CLEAN   ==========";
apt-get autoclean -y;

apt-get install $DEBS -y

exit 0

