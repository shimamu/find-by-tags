#!/bin/bash

find_type=f

tags=$(find . -type $find_type | grep -e "【.*】" -o | sed 's/【//g' | sed 's/】/\n/g' | grep -v '^$' | sort | uniq)

for tag in $tags; do
    echo $tag
    find . -type $find_type | grep -e "【$tag】"
done

#echo $tags
