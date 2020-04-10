#!/bin/bash


[[ -e "oci.lock" ]] && exit -1


PATH=$HOME/bin:$PATH


MSG=$(oci compute instance launch --availability-domain {ռλ} --display-name {ռλ} --image-id {ռλ} --subnet-id {ռλ} --shape VM.Standard.E2.1.Micro --assign-public-ip true --metadata '{"ssh_authorized_keys":"{ռλ"}' --compartment-id {ռλ} 2>&1)


QUERY=$(echo $MSG | grep "Out")


if [[ $QUERY =~ "Out of host capacity" ]]; then
        printf "out of host capacity\n" >> oci.log
else
        curl 'https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key={ռλ}' -H 'Content-Type: application/json' -d '{"msgtype": "text", "text": { "content": "Oracle VM created." } }' >> oci.log 2>&1
        echo "1" > oci.lock
fi