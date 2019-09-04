#!/bin/bash
ORGANIZATION_NAME=$1
OUTPUT_FILE=$2
PREFIX=$3

#curl -s -i https://api.github.com/orgs/${ORGANIZATION_NAME}/repos | sed '/[ ]*"clone_url":/!d;s/[^:]*: "//;s/",$//' | grep ${PREFIX} > ${OUTPUT_FILE}

USERS=$(curl -s -i https://api.github.com/orgs/ARAGroupGIA/repos | sed '/[ ]*"clone_url":/!d;s/[^:]*: "//;s/",$//' | grep practice00 | awk -F- '{print $2}' | awk -F. '{print $1}')
URLS=$(curl -s -i https://api.github.com/orgs/${ORGANIZATION_NAME}/repos | sed '/[ ]*"clone_url":/!d;s/[^:]*: "//;s/",$//' | grep ${PREFIX})

arrayusers=($USERS)
arrayurls=($URLS)

i=0
for user in "${arrayusers[@]}"
do
   echo "${user},${arrayurls[$i]}" >> ${OUTPUT_FILE}
   i=$[$i+1]
done
