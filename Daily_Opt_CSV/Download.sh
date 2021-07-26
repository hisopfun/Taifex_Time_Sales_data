#!bin/bash

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH

function getFile(){
	#$1=dir $2=filename $3=url no file
	echo $2"(Downloading......)";
	mkdir $1
	curl $3$2 > $1/$2  
		
}

# Time_Sales_Data/
#Filename="OptionsDaily_"$(date +"%Y_%m_%d")".zip"
#url="https://www.taifex.com.tw/file/taifex/Dailydownload/OptionsDailydownloadCSV/"$Filename
#echo $url
#dir=$SCRIPTPATH/Time_Sales_Data
#mkdir $dir
#curl $url > $dir/$Filename
getFile $SCRIPTPATH/Time_Sales_Data "OptionsDaily_"$(date +"%Y_%m_%d")".zip" "https://www.taifex.com.tw/file/taifex/Dailydownload/OptionsDailydownloadCSV/"

# Daily_Options_Delta/
#Filename="Delta_"$(date +"%Y%m%d")".csv"
#url="https://www.taifex.com.tw/file/taifex/Dailydownload/delta/chinese/"$Filename
#echo $url
#dir=$SCRIPTPATH/Daily_Options_Delta
#mkdir $dir
#curl $url > $dir/$Filename
getFile $SCRIPTPATH/Daily_Options_Delta "Delta_"$(date +"%Y%m%d")".csv" "https://www.taifex.com.tw/file/taifex/Dailydownload/delta/chinese/"

# Liquidity_Indicator/
#Filename="LI_"$(date +"%Y%m%d")".csv"
#url="https://www.taifex.com.tw/file/taifex/Dailydownload/LI/eng/OPT/"$Filename
#echo $url
#dir=$SCRIPTPATH/Liquidity_Indicator
#mkdir $dir
#curl $url > $dir/$Filename
getFile $SCRIPTPATH/Liquidity_Indicator "LI_"$(date +"%Y%m%d")".csv" "https://www.taifex.com.tw/file/taifex/Dailydownload/LI/eng/OPT/"
