#!/bin/bash
ORGANIZATION_NAME=$1
OUTPUT_FILE=$2
PREFIX=$3

curl -i https://api.github.com/orgs/${ORGANIZATION_NAME}/repos | sed '/[ ]*"clone_url":/!d;s/[^:]*: "//;s/",$//' | grep ${PREFIX} > ${OUTPUT_FILE}
