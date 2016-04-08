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

**Solution**: We devised a means to create an [Automated New Books list for Primo](https://cloud.githubusercontent.com/assets/15346304/14390185/bc1bcbc6-fd6a-11e5-924c-216d5f2790c3.png), which appears in both our default and New Books search scopes.  Our New Books list uses a custom Alma Analysis to retrieve a list of Alma MMSIDs for print books received in the last 7 days.  The Alma Analysis is scheduled to run daily and emails the list of Alma MMSIDS as a .txt attachment to our cloud based Box.com email address.  Next, a custom shell script retrieves the list of Alma MMSIDs for new books via FTP from our Box.com account.  Other custom shell scripts then loop through the list of MMSIDs calling the Alma Bibs API to retrieve the bibliographic records, and format and output the bibliographic records to our harvesting pipe in Primo.  

Special thanks go to my supervisor, Joe and colleagues for helping me get this to work:

> Joseph Shubitowski, Head, Library Information Systems<br/>
> Ruth Cuadra, Business Applications Administrator<br/>
> Joshua Gomez, Software Engineer Senior<br/>
> Lawrence Olliffe, Software Engineer

**[Working New Books List](http://primo.getty.edu/primo_library/libweb/action/search.do?ct=facet&fctN=facet_local38&fctV=All+Books+Received+in+the+Last+7+Days&rfnGrp=1&rfnGrpCounter=1&frbg=&vl%2896033584UI1%29=all_items&&indx=1&fn=search&dscnt=0&scp.scps=scope%3A%28GETTY_NEWBOOKS%29%2Cscope%3A%28GRI_RA%29&vl%281UIStartWith0%29=exact&vl%2821781791UI0%29=any&vid=GRI&mode=Basic&ct=search&srt=rank&tab=all_gri&dum=true&vl%28freeText0%29=getty&dstmp=1460128129430)**

Our [process](https://cloud.githubusercontent.com/assets/15346304/10766824/7f731940-7c96-11e5-9697-3f96376b2477.png) is outlined in the steps below:

> Step 1: Create the [Alma Analysis](https://github.com/reedwards/automated-new-books-list/wiki/Step 1: Create Alma Analysis).

> Step 2: Create a free [Box.com account](https://github.com/reedwards/automated-new-books-list/wiki/Step 2: Create Box.com account).

> Step 3: [Manage](https://github.com/reedwards/automated-new-books-list/wiki/Step 3: Manage Alma Analysis) your Alma Analysis.

> Step 4: Get the [code](https://github.com/reedwards/automated-new-books-list/wiki/Step 4: Get the Code).

> Step 5: Customize the Primo [Back Office](https://github.com/reedwards/automated-new-books-list/wiki/Step 5: Customize Back Office).
