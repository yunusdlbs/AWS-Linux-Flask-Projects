#! /bin/bash

# Here if you use "sed -i" it'll change terraform.tf permanently.

sed "s/ec2-private_ip/$(cat info.json | grep PrivateIpAddress | head -1 | cut -d'"' -f4)/" terraform.tf
