# automated-new-books-list
**Title**: Automated New Books List for Primo

**Created by:** 
> Ryan Edwards<br/>
> Digital Access and Systems Librarian<br/>
> Getty Research Institute<br/>
> Los Angeles, CA<br/>
> reedwards@getty.edu 

**Date:** October 27, 2015

**Problem:** There is no New Books feature in Primo like we used to have in [Voyager](https://cloud.githubusercontent.com/assets/15346304/10766842/96c6977a-7c96-11e5-9ec3-5c12ca0b34c6.png).  Furthermore, one can only search an [Alma RSS feed](https://cloud.githubusercontent.com/assets/15346304/10766812/7562d90e-7c96-11e5-9002-2cd9ea096bc6.png) and sort by author/title/date in Internet Explorer 7 natively.

**Solution**: We devised a means to create an [automated New Books list for Primo](https://cloud.githubusercontent.com/assets/15346304/10923512/4352edb4-8236-11e5-9ec8-8ca44121f3f1.png), which appears in both our default and New Books search scopes.  Our New Books list uses a custom Alma Analysis to retrieve a list of Alma MMSIDs for print books received in the last 7 days.  The Alma Analysis is scheduled to run daily and emails the list of Alma MMSIDS as a .txt attachment to our cloud based Box.com email address.  Next, a custom shell script retrieves the list of Alma MMSIDs for new books via FTP from our Box.com account.  Other custom shell scripts then loop through the list of MMSIDs calling the Alma Bibs API to retrieve the bibliographic records, and format and output the bibliographic records to our harvesting pipe in Primo.  

Special thanks go to my supervisor, Joe and colleagues for helping me get this to work:

> Joseph Shubitowski, Head, Library Information Systems<br/>
> Ruth Cuadra, Business Applications Administrator<br/>
> Joshua Gomez, Software Engineer Senior<br/>
> Lawrence Olliffe, Software Engineer

**Working New Books List:** http://primo.getty.edu/primo_library/libweb/action/search.do?fn=search&ct=search&initialSearch=true&mode=Basic&tab=all_gri&indx=1&dum=true&srt=rank&vid=GRI&frbg=&vl%28freeText0%29=getty_newbooks&scp.scps=scope%3A%28GETTY_NEWBOOKS%29%2Cscope%3A%28GRI_RA%29&vl%2880431211UI1%29=all_items&vl%281UIStartWith0%29=contains&vl%2821781791UI0%29=any&vl%2821781791UI0%29=title&vl%2821781791UI0%29=any

Our [process](https://cloud.githubusercontent.com/assets/15346304/10766824/7f731940-7c96-11e5-9697-3f96376b2477.png) is outlined in the steps below:

> Step 1: Create the [Alma Analysis](https://github.com/reedwards/automated-new-books-list/wiki/Step 1: Create Alma Analysis).

> Step 2: Create a free [Box.com account](https://github.com/reedwards/automated-new-books-list/wiki/Step 2: Create Box.com account).

> Step 3: [Manage](https://github.com/reedwards/automated-new-books-list/wiki/Step 3: Manage Alma Analysis) your Alma Analysis.

> Step 4: Get the [code](https://github.com/reedwards/automated-new-books-list/wiki/Step 4: Get the Code).

> Step 5: Customize the Primo [Back Office](https://github.com/reedwards/automated-new-books-list/wiki/Step 5: Customize Back Office).
