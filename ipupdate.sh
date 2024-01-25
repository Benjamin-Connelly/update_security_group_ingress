#!/bin/bash

description="Your Description Here"

export oldip=$(cat old.ip)
export cidr=$(cat cidr.ip)
export groups=$(cat groups.list)
export ports=$(cat ports.list)
aws ec2 revoke-security-group-ingress --group-id $groups \
    --protocol tcp --port $ports --cidr $oldip --profile $1

dig +short myip.opendns.com @resolver1.opendns.com > /tmp/my.ip
awk '{ print $0 "/32" }' < my.ip > cidr.ip

aws ec2 authorize-security-group-ingress --group-id $groups \
    --profile $1 \
    --ip-permissions '[{"IpProtocol": "tcp", "FromPort": '$ports', "ToPort": '$ports', "IpRanges": [{"CidrIp": "'$cidr'", "Description": "$desription"}]}]'

cat cidr.ip > old.ip
