#!bin/bash

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH

# Time_Sales_Data/
Filename="Daily_"$(date +"%Y_%m_%d")".zip"
url="https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV/"$Filename
echo $url
mkdir  $SCRIPTPATH/Time_Sales_Data
curl $url > $SCRIPTPATH/Time_Sales_Data/$Filename

# Volume_Report_On_Calender_Spread_Order/
Filename="Daily_"$(date +"%Y_%m_%d")"_B.zip"
url="https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV_B/"$Filename
echo $url
mkdir  $SCRIPTPATH/Volume_Report_On_Calender_Spread_Order
curl $url > $SCRIPTPATH/Volume_Report_On_Calender_Spread_Order/$Filename

# Time_Sales_Data_On_Calender_Spread_Orders/
Filename="Daily_"$(date +"%Y_%m_%d")"_C.zip"
url="https://www.taifex.com.tw/file/taifex/Dailydownload/DailydownloadCSV_C/"$Filename
echo $url
mkdir  $SCRIPTPATH/Time_Sales_Data_On_Calender_Spread_Orders
curl $url > $SCRIPTPATH/Time_Sales_Data_On_Calender_Spread_Orders/$Filename

# Time_Sales_Data_On_Calender_Spread_Orders/
Filename="LI_"$(date +"%Y%m%d")".csv"
url="https://www.taifex.com.tw/file/taifex/Dailydownload/LI/eng/FUT/"$Filename
echo $url
mkdir  $SCRIPTPATH/Liquidity_Indicator
curl $url > $SCRIPTPATH/Liquidity_Indicator/$Filename

