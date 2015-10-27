##########################################################################################################
#
# Purpose: Retrieve list of Alma MMSIDs from Alma Analysis from Box.com account via FTP
#
# Program: analysis.sh
# Author: Ryan Edwards
# Created: 2015/10/27
# Comments:
#
# Replace username and password with Box.com account username and password.
# We've included code to retrieve the list of Alma MMSIDs from the Alma Analysis via the Alma Retrieve Bib API.
# However, the code is currently commented out as there is a bug in the Alma Analytics API/Oracle BI which sometimes 
# prevents us from retrieving the list of Alma MMSIDs when using the Alma Analytics API (reference case #00103091).
# When ExLibris fixes the bug, you can use the Alma Analytics API to retrieve the Alma Analysis, replacing {your_api_key}
# with your Alma Analytics API key.
##########################################################################################################

#!/bin/sh
 
#cd into /exlibris/primo/newTitles
cd /exlibris/primo/newTitles/
 
#ftp Box to get list of mmsids outputted from Alma Analysis
curl -u username:password –O ftp://ftp.box.com/New-Titles/booksReceived.txt
 
#output mmsids in xml from Alma Analytic booksReceived
#curl -G "https://api-na.hosted.exlibrisgroup.com/almaws/v1/analytics/reports?path=/shared/Getty+Research+Institute/Reports/booksReceived&limit=1000&apikey={your_api_key}" >> /exlibris/primo/newTitles/booksReceived.xml
