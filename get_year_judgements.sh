#!/bin/bash

cd "$(dirname "$0")"

DATE=gdate
FORMAT="%Y-%m-%d"
start=`$DATE +$FORMAT -d "${1}-01-01"`
end=`$DATE +$FORMAT -d "${1}-12-31"`
now=$start
while [[ "$now" < "$end" ]] ; do
  now=`$DATE +$FORMAT -d "$now + 1 day"`
  echo "$now"
  ./get_judgements "$now"
done