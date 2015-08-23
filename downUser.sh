#!/bin/bash

cd $( dirname $0 )

user="$1"
max=100

echo "downloading newest $max songs from user $user"

for songNr in `seq 0 $max`; do
  ./scdl -o $songNr -l https://soundcloud.com/$user
done

