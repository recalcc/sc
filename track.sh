#!/bin/bash
curl --data "command=recalc" http://${2-recal.cc}/_/$1 >> /dev/null 2>&1
#!/bin/bash
curl  http://${2-recal.cc}/_/$1/csv 2>/dev/null | ./psc -d ,

