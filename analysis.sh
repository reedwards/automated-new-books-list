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

# Initially, when we created analysis.sh, we encountered a bug in the Alma Analytics API/Oracle BI which prevented us 
# from retrieving the list of Alma MMSIDs when using the Alma Analytics API (reference case #00103091).
# So, we decided to retrieve the Alma MMSIDs from Box.com instead. However, we added commented out code in analysis2bibs.sh, 
# thinking that ExLibris might fix this bug in the future.  ExLibris did indeed fix the bug in the Alma February 2016 Release, 
# but we decided to keep using Box.com because the maximum number of MMSIDs which can be retrieved per the Alma Analytics API 
# call is 1000 and we didn't want to be involved with complicated multiple API calls, resumption tokens, loops, python scripts, etc... 

#output mmsids in xml from Alma Analytic booksReceived
#curl -G "https://api-na.hosted.exlibrisgroup.com/almaws/v1/analytics/reports?path=/shared/Getty+Research+Institute/Reports/booksReceived&limit=1000&apikey={your_api_key}" >> /exlibris/primo/newTitles/booksReceived.xml
