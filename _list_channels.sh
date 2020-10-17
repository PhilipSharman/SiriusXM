#!/usr/local/bin/bash
##############################################################################################################
#	List Channels
#	=============
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
# The credentials are set in 'private/credentials.sh'.
# 	export SIRIUSXM_USER="username"
# 	export SIRIUSXM_PASS="password"
source 'private/credentials.sh'

# List the channels
python3 sxm.py  -l -ca "$SIRIUSXM_USER" "$SIRIUSXM_PASS"

##############################################################################################################
echo
echo "Done."
exit
