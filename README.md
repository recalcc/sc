sc
==

sc 7.16.4r with debian patches applied and helper scripts and cmdline switches to interact with recalcc sheets

``` 
CHANGES BETWEEN 7.16.3 and 7.16.4r:
recalcc
        -Added -X and -T command line params.
        -if -X 'cmdline' is defined in the commandline, 'cmdline' will be
         executed and piped into the spreadsheet (as if it was merged with
         the M command) every 5 seconds by default. this interval can be       
         changed using the -T param (e.g.          
         ./sc -X 'cat myfile' -T 10
         will pipe file 'myfile' into the spreadsheet every 10 seconds)
        -Added helper bash scripts to interact with recal.cc spreadsheet:
        *monitor.sh sheetname 10
         will start sc and automatically grab a recalculated csv export of
         recal.cc sheet 'sheetname' every 10 seconds.
        *recalcsheet.sh sheetname sheethost
         will recalculate a recal.cc sheet named sheetname on sheethost
        *uploadcsv.sh csvfilename sheetname sheethost
         will upload a csv named csvfilename to sheet sheetname on host
         sheethost
        *getcsv.sh sheetname
         will produce a csv export of sheetname to stdout (this can be      
         piped into sc using 'getcsv.sh sheetname | psc -d , | sc'
```
