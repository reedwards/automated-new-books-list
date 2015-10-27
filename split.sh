##########################################################################################################
#
# Purpose: Split Alma API bib record into MARC21 record, so file splitter can recognize MARC21 record.
#
# Program: split.sh
# Authors: Ryan Edwards, Joe Shubitowski, Lawrence Olliffe
# Created: 2015/10/27
# Comments:
#
##########################################################################################################

#!/bin/sh
 
cd /exlibris/primo/newTitles/records/
 
#split Alma API bib record into MARC21 record
for i in *.xml
   do
     /exlibris/primo/p4_1/product/local/java/bin/java -jar /exlibris/primo/newTitles/saxon9he.jar -s:/exlibris/primo/newTitles/records/$i -xsl:/exlibris/primo/newTitles/record_split.xsl -o:/exlibris/primo/newTitles/newBooks/`basename "$
i"`
   done
 
#gzip rec*.xml in /exlibris/primo/newTitles/newBooks
gzip /exlibris/primo/newTitles/newBooks/*.xml
