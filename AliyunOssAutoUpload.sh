#!/bin/bash

# ==================== Config ====================

host="your-oss-host"
bucket="your-oss-bucket"
id="your-oss-AccessKey ID"
key="your-oss-AccessKey Secret Key"
cloudFolder="your-oss-folder"

# ================================================

declare -a result=()
encodeFilename=""

function upload(){
    urlencode "$(basename "$1")"
    cloudDir="$cloudFolder/$encodeFilename"
    contentType=`file -b --mime-type "$1"`
    dateValue="`TZ=GMT env LANG=en_US.UTF-8 date +'%a, %d %b %Y %H:%M:%S GMT'`"
    stringToSign="PUT\n\n$contentType\n$dateValue\n/$bucket/$cloudFolder/$encodeFilename"
    signature=`echo -en "$stringToSign" | openssl sha1 -hmac "$key" -binary | base64`

    curl -i -q -X PUT -T "$1" \
        -H "Host: $bucket.$host" \
        -H "Date: $dateValue" \
        -H "Content-Type: $contentType" \
        -H "Authorization: OSS $id:$signature" \
        https://"$bucket"."$host"/"$cloudDir"

    result+=(https://"$bucket"."$host"/"$cloudDir")
}

function urlencode() {
  encodeFilename=""
  local length="${#1}"
  for (( i = 0; i < length; i++ ))
  do
    local c="${1:i:1}"
    case $c in 
      [a-zA-Z0-9.~_-]) 
        encodeFilename=$encodeFilename$(printf "$c") 
        ;;
      *) 
        encodeFilename=$encodeFilename$(printf "$c" | xxd -p -c1 | 
        while read x
        do 
          printf "%%%s" "$x"
        done)
    esac
  done
}

for var in "$@"
do
    newFile=""
    case "$OSTYPE" in
      msys*)
        newFile=`echo "${var##*/}" | sed 's/[ ][ ]*/_/g'` ;;
      *)
        newFile="${var%/*}/"`echo "${var##*/}" | sed 's/[ ][ ]*/_/g'`
    esac
    mv "$var" "$newFile" 
    upload "$newFile"
done

for res in "${result[@]}"
do
    echo "$res"
done
