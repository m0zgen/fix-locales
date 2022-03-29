#!/bin/bash
# Author: Yevgeniy Goncharov aka xck, http://sys-adm.in
# Script for fix locales UTF-8 warning in Debian
# /bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)

# Sys env / paths / etc
# -------------------------------------------------------------------------------------------\
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

# Actions

# Install locales
apt -y install locales

# Uncomment en_US.UTF-8 UTF-8
sed -i 's/# en_US.UTF-8.*/en_US.UTF-8 UTF-8/' /etc/locale.gen

# Appli locales
locale-gen

echo -e "Done!"