#!/bin/bash

array=()
while IFS= read -r line; do
   array+=("$line")
done <lines.txt

for i in ${array[@]}; do 
    printf $i >> test.log;
    printf date +%s >> test.log;
done

git commit -m "test.sh" test.sh

git push -u origin master
