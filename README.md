# automated-new-books-list
Automated New Books List for Primo

<strong>Created by:</strong> 

Ryan Edwards</br>
Digital Access and Systems Librarian</br>
Getty Research Institute</br>
reedwards@getty.edu</br>

Date: October 27, 2015

Description: A means to create an automated New Books list for Primo, which appears in both our default and Recent Acquisitions search scopes.  Our New Books list uses a custom Alma Analysis to retrieve a list of Alma MMSIDs for books received in the last 7 days.  The Alma Analysis is scheduled to run daily and emails the list of Alma MMSIDS as a .txt attachment to our cloud based Box.com email address.  Next, a custom shell script retrieves the list of Alma MMSIDs for new books via FTP from our Box.com account.  Other custom shell scripts then loop through the list of MMSIDs calling the Alma Bibs API to retrieve the bibliographic records, and format and output the bibliographic records to our harvesting pipe in Primo.

Working New Books List: http://primo.getty.edu/primo_library/libweb/action/search.do?fn=search&ct=search&initialSearch=true&mode=Basic&tab=all_gri&indx=1&dum=true&srt=rank&vid=GRI&frbg=&vl%28freeText0%29=getty_newbooks&scp.scps=scope%3A%28GETTY_NEWBOOKS%29%2Cscope%3A%28GRI_RA%29&vl%2880431211UI1%29=all_items&vl%281UIStartWith0%29=contains&vl%2821781791UI0%29=any&vl%2821781791UI0%29=title&vl%2821781791UI0%29=any 

Special thanks go to my supervisor Joe and my colleagues for helping me get this to work:

Joseph Shubitowski, Head, Library Info. Systems

Ruth Cuadra, Bus Applications Administrator

Joshua Gomez, Software Engineer Sr

Lawrence Olliffe, Software Engineer
