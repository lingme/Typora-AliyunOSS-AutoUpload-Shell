#!/bin/bash

# ==================== Config ====================

host="your-oss-host"
bucket="your-oss-bucket-name"
id="your-oss-bucket-id"
key="your-oss-bucket-key"
cloudFolder="your-oss-bucket-folder"

# ================================================

declare -a result=()

function upload(){
    cloudDir="$cloudFolder/$(basename $var)"
    contentType=`file -ib $1 |awk -F ";" '{print $1}'`
    dateValue="`TZ=GMT env LANG=en_US.UTF-8 date +'%a, %d %b %Y %H:%M:%S GMT'`"
    stringToSign="PUT\n\n${contentType}\n${dateValue}\n/${bucket}/${cloudDir}"
    signature=`echo -en $stringToSign | openssl sha1 -hmac ${key} -binary | base64`

    curl -i -q -X PUT -T "$1" \
        -H "Host: $bucket.$host" \
        -H "Date: ${dateValue}" \
        -H "Content-Type: ${contentType}" \
        -H "Authorization: OSS ${id}:${signature}" \
        https://$bucket.$host/${cloudDir}

    result+=(https://$bucket.$host/${cloudDir})
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
