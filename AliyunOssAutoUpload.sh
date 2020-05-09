#!/bin/bash

host="your-oss-host"
bucket="your-oss-bucket"
Id="your-oss-id"
Key="your-oss-key"

osshost=$bucket.$host
declare -a result=()

for var in "$@"
do 
    source=$var
    cloudDir="$(basename $var)"
    resource="/${bucket}/${cloudDir}"
    contentType=`file -ib ${source} |awk -F ";" '{print $1}'`
    dateValue="`TZ=GMT env LANG=en_US.UTF-8 date +'%a, %d %b %Y %H:%M:%S GMT'`"
    stringToSign="PUT\n\n${contentType}\n${dateValue}\n${resource}"
    signature=`echo -en $stringToSign | openssl sha1 -hmac ${Key} -binary | base64`

    url=https://${osshost}/${cloudDir}

    curl -i -q -X PUT -T "${source}" \
        -H "Host: ${osshost}" \
        -H "Date: ${dateValue}" \
        -H "Content-Type: ${contentType}" \
        -H "Authorization: OSS ${Id}:${signature}" \
        ${url}

    result+=(${url})
done

echo "Upload Success:"

for res in "${result[@]}"
do
    echo "$res"
done
