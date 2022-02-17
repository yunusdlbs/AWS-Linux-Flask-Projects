#! /bin/bash

# solution will be send to result.txt
if [[ ! -f $1 ]]
then
  echo "Please write the file name after ./solution.sh "
  exit
fi
cat $1 | grep serdar |grep TerminateInstance | grep -Eo "i-[a-zA-Z0-9]{17}" | sort -u > result.txt