#!/bin/bash

# ==================== Config ====================

host="your-oss-host"
bucket="your-oss-bucket"
id="your-oss-AccessKey ID"
key="your-oss-AccessKey Secret Key"
cloudFolder="your-oss-folder"

# ================================================

declare -a result=()
strEncode=""

function upload(){
    urlencode "$(basename $1)"
    cloudDir="$cloudFolder/$strEncode"
    contentType=`file -ib $1 |awk -F ";" '{print $1}'`
    dateValue="`TZ=GMT env LANG=en_US.UTF-8 date +'%a, %d %b %Y %H:%M:%S GMT'`"
    stringToSign="PUT\n\n${contentType}\n${dateValue}\n/${bucket}/${cloudFolder}/$(basename $1)"
    signature=`echo -en $stringToSign | openssl sha1 -hmac ${key} -binary | base64`

    curl -i -q -X PUT -T "$1" \
        -H "Host: $bucket.$host" \
        -H "Date: ${dateValue}" \
        -H "Content-Type: ${contentType}" \
        -H "Authorization: OSS ${id}:${signature}" \
        https://$bucket.$host/${cloudDir}

    result+=(https://$bucket.$host/${cloudDir})
}

function urlencode() {
  strEncode=""
  local length="${#1}"
  for (( i = 0; i < length; i++ ))
  do
    local c="${1:i:1}"
    case $c in 
      [a-zA-Z0-9.~_-]) 
        strEncode=$strEncode$(printf "$c") 
        ;;
      *) 
        strEncode=$strEncode$(printf "$c" | xxd -p -c1 | 
        while read x
        do 
          printf "%%%s" "$x"
        done)
    esac
  done
}

for var in "$@"
do
    upload $var
done

echo "Upload Success:"
for res in "${result[@]}"
do
    echo $res
done