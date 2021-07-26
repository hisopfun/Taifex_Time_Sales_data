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
	curl $3$2 > $1/$2 & 
	echo $2" Done"	
}

# Time_Sales_Data/
#Filename="Daily_"$(date +"%Y_%m_%d")".zip"
#url="https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV/"$Filename
#echo $url
#dir=$SCRIPTPATH/Time_Sales_Data
#mkdir $dir
#curl $url > $dir/$Filename
getFile $SCRIPTPATH/Time_Sales_Data "Daily_"$(date +"%Y_%m_%d")".zip" "https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV/"

# Volume_Report_On_Calender_Spread_Order/
#Filename="Daily_"$(date +"%Y_%m_%d")"_B.zip"
#url="https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV_B/"$Filename
#echo $url
#dir=$SCRIPTPATH/Volume_Report_On_Calender_Spread_Order
#mkdir $dir
#curl $url > $dir/$Filename
getFile $SCRIPTPATH/Volume_Report_On_Calender_Spread_Order "Daily_"$(date +"%Y_%m_%d")"_B.zip" "https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV_B/"

# Time_Sales_Data_On_Calender_Spread_Orders/
#Filename="Daily_"$(date +"%Y_%m_%d")"_C.zip"
#url="https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV_C/"$Filename
#echo $url
#dir=$SCRIPTPATH/Time_Sales_Data_On_Calender_Spread_Orders
#mkdir $dir
#curl $url > $dir/$Filename
getFile $SCRIPTPATH/Time_Sales_Data_On_Calender_Spread_Orders "Daily_"$(date +"%Y_%m_%d")"_C.zip" "https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV_C/"

# Time_Sales_Data_On_Calender_Spread_Orders/
#Filename="LI_"$(date +"%Y%m%d")".csv"
#url="https://www.taifex.com.tw/file/taifex/Dailydownload/LI/eng/FUT/"$Filename
#echo $url
#dir=$SCRIPTPATH/Liquidity_Indicator
#mkdir $dir
#curl $url > $dir/$Filename
getFile $SCRIPTPATH/Liquidity_Indicator "LI_"$(date +"%Y%m%d")".csv" "https://www.taifex.com.tw/file/taifex/Dailydownload/LI/eng/FUT/"

