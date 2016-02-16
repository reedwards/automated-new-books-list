##########################################################################################################
#
# Purpose: Remove script, text, xml, and gz files from directories before delete pipe is run.
#
# Program: removeBibs.sh
# Author: Ryan Edwards
# Created: 2015/10/27
# Comments:
#
##########################################################################################################


#!/bin/sh
 
#remove existing bibs.sh, booksReceived.txt, mmsids.txt, and mmsids_wolabel.txt in /exlibris/primo/newTitles/
rm /exlibris/primo/newTitles/bibs.sh 
rm /exlibris/primo/newTitles/booksReceived.txt
rm /exlibris/primo/newTitles/mmsids.txt
rm /exlibris/primo/newTitles/mmsids_wolabel.txt
# rm /exlibris/primo/newTitles/booksReceived.xml
 
#remove bibrec*.xml in /exlibris/primo/newTitles/records
rm /exlibris/primo/newTitles/records/*.xml
 
#remove existing bibrec*.xml.gz in /exlibris/primo/newTitles/newBooks
rm /exlibris/primo/newTitles/newBooks/*.xml.gz
