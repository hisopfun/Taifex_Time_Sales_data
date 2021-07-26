#!bin/bash

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH

# Time_Sales_Data/
Filename="OptionsDaily_"$(date +"%Y_%m_%d")".zip"
url="https://www.taifex.com.tw/file/taifex/Dailydownload/OptionsDailydownloadCSV/"$Filename
echo $url
mkdir $SCRIPTPATH/Time_Sales_Data
curl $url > $SCRIPTPATH/Time_Sales_Data/$Filename

