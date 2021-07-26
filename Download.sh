#!bin/bash

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH


bash $SCRIPTPATH/Daily_Fut_CSV/Download.sh
bash $SCRIPTPATH/Daily_Opt_CSV/Download.sh
