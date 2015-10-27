##########################################################################################################
#
# Purpose: Loop through the list of MMSIDs calling the Alma Bibs API to retrieve the bibliographic records
#
# Program: analysis2bibs.sh
# Author: Ryan Edwards, Joseph Shubitowski, Joshua Gomez, Lawrence Olliffe
# Created: 2015/10/27
# Comments:
#
# Replace {your_api_key} with your Alma Retrieve Bib API key.
# We've included xsl code to isolate the list of Alma MMSIDs from the Alma Analysis as well as code output the Alma bib
# records directly from this list. 
# However, the code is currently commented out as there is a bug in the Alma Analytics API/Oracle BI which sometimes 
# prevents us from retrieving the list of Alma MMSIDs when using the Alma Analytics API (reference case #00103091). 
# When ExLibris fixes the bug, you can use the Alma Analytics API to retrieve the Alma Analysis, replacing {your_api_key} 
# with your Alma Analytics API key.
##########################################################################################################


#!/bin/sh
 
#convert UTF-16 file to UTF-8 and delete ^M characters
iconv -f UTF-16 -t UTF-8 </exlibris/primo/newTitles/booksReceived.txt | tr -d '\r' >/exlibris/primo/newTitles/mmsids.txt
 
#delete 'MMS Id' label from first row of mmsids.txt
cat /exlibris/primo/newTitles/mmsids.txt | grep -v 'MMS Id' > /exlibris/primo/newTitles/mmsids_wolabel.txt
 
#send mmsids_wolabel.txt to loop to create Alma Retrieve Bib record API lines to output Alma bib records
cat /exlibris/primo/newTitles/mmsids_wolabel.txt|
  while read ids 
      do echo "curl -G 'https://api-na.hosted.exlibrisgroup.com/almaws/v1/bibs/$ids?expand=p_avail&apikey={your_api_key}' -o /exlibris/primo/newTitles/records/bibrec_$ids.xml" >> /exlibris/primo/newTitles/bibs.sh
      done
 
#use booksReceived.xml and report_js.xsl to isolate mmsids
# /exlibris/primo/p4_1/product/local/java/bin/java -jar /exlibris/primo/newTitles/saxon9he.jar -s:/exlibris/primo/newTitles/booksReceived.xml -xsl:/exlibris/primo/newTitles/report_js.xsl -o:/exlibris/primo/newTitles/mmsids.txt
 
#send mmsids.out to loop to create Alma Retrieve Bib record API lines to output Alma bib records
# cat /exlibris/primo/newTitles/mmsids.txt|
#  while read ids 
#      do curl -G 'https://api-na.hosted.exlibrisgroup.com/almaws/v1/bibs/${ids}?expand=p_avail&apikey={your_api_key}' -o /exlibris/primo/newTitles/records/bibrec_${ids}.xml
#      done
 
#change permissions on bibs.sh
chmod 755 /exlibris/primo/newTitles/bibs.sh
 
#dump out the Alma bib records to bibrec*.xml to /exlibris/primo/newTitles/records
/exlibris/primo/newTitles/bibs.sh
