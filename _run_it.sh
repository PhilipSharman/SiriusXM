#!/usr/local/bin/bash
##############################################################################################################
#	Run It
#	======
#
#
# 	v 1.0 	- Written by Philip Sharman, 2020-10-17
##############################################################################################################
# Complain if an undefined variable is used
set -o nounset
# Exit on failure
set -o errexit
# Fail if pipe fails
set -o pipefail
# Trace ERR through 'time command' and other functions
set -o errtrace  

##############################################################################################################
# NOTE:
# You need to do this first:
#	pip3 install requests

##############################################################################################################
# Usage
# 	usage: sxm.py [-h] [-l] [-p PORT] [-ca] <username> <password>

# 	  -h, --help            show this help message and exit
# 	  -l, --list
# 	  -p PORT, --port PORT
# 	  -ca, --canada

##############################################################################################################

# The credentials are set in 'private/credentials.sh'.
# 	export SIRIUSXM_USER="username"
# 	export SIRIUSXM_PASS="password"
source 'private/credentials.sh'

# ---------------------------------------------------------------------------------------------------------- #
# Start the stream

echo "In VLC:"
echo "Choose File > Open Network"
echo "http://127.0.0.1:8888/<channel>.m3u8"
echo "EG:"
echo "http://127.0.0.1:8888/60svibrations.m3u8"

python3 sxm.py "$SIRIUSXM_USER" "$SIRIUSXM_PASS" --canada -p 8888

##############################################################################################################
echo
echo "Done."
exit
