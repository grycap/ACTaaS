#!/bin/bash

cecho(){
    RED="\033[0;31m"
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    # ... ADD MORE COLORS
    NC='\033[0m' # No Color

    printf "${!1}${2} ${NC}\n"
}

usage() { echo "$0 -f <students file> -p <practice number> -c [f <face> | a <autonomous>]"  1>&2; exit 1; }


while getopts ":f:p:c:" o; do
    case "${o}" in
        f)
            #File is a list of student's github accounts, one per line
            FILE=${OPTARG}

            ;;
        p)
            PRACTICE=${OPTARG}
           ;;

        c)
         TYPE=${OPTARG}
         if [ "$TYPE" = "a" ] || [ "$TYPE" = "A" ]
         then
            TYPE=autonomous
        elif [ "$TYPE" = "f" ] || [ "$TYPE" = "F" ]
        then
            TYPE=face
        else
            TYPE=""
        fi
        ;;

          *)
            cecho "RED" "ERROR: some parameters are incorrect, please consider usage."
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${PRACTICE}" ] || [ -z "${FILE}" ] || [ -z "${TYPE}" ]; then
    cecho "RED" "ERROR: some parameters are missing, please consider usage."
    usage
    exit
fi

if [ -f lista_repos.txt ]; then
    rm lista_repos.txt
fi

if [ ! -f "${FILE}" ]; then
    cecho "RED" "ERROR: file ${FILE} not found."
    exit
fi


url="https://github.com/ARAGroupGIA/arapractice0${PRACTICE}${TYPE}-"
while IFS= read -r usuario
do
  linea="$usuario,$url$usuario"
  echo "$linea" >> lista_repos.txt
done < "${FILE}"
cat lista_repos.txt
