#!/bin/bash

hostname=$(hostname -s)
truncate -s 0 /var/log/node_exporter/node_host_info.prom

## Certificate info
files=($(find "/etc/pki/ca-trust/source/anchors" -mindepth 1 -maxdepth 1 -name "*.crt"))
now=$(date "+%s")

# for each file we want to check date of expiry
for crt in "${files[@]}"; do
   valid=$(date -d "$(: | openssl x509 -enddate -noout -in "$crt" | cut -d= -f 2)" +%s)
   expiry=$((valid - now))
   issuer=$(openssl x509 -noout -issuer -in "$crt" | sed 's/.*CN = //' | sed 's/, OU =.*$//' | sed 's/\"//g')
   cn=$(openssl x509 -noout -subject -in "$crt" | sed 's/.*CN = //' | sed 's/, OU =.*$//' | sed 's/\"//g')
echo "node_exporter_cert_expiry{hostname=\""$hostname"\",source=\""$crt"\",issuer=\""$issuer"\",cn=\""$cn"\"} "$expiry"
node_exporter_cert_valid{hostname=\""$hostname"\",source=\""$crt"\",issuer=\""$issuer"\",cn=\""$cn"\"} "$valid"" >> /var/log/node_exporter/node_host_info.prom
done

## Host info
name=""
pretty_name=""
version=""
ip="$(ip -o -f inet addr | awk '!/^[0-9]*: ?lo|link\/ether/ {gsub("/", " "); print $2"=\""$4"\""}' ORS=',' | sed '$s/.$//' | tr '-' '_')"
cpu="$(grep -m 1 'model name' /proc/cpuinfo | cut -d':' -f2)"
model="$(dmidecode -t system | grep 'Manufacturer:' | cut -d':' -f2)"

if [ -f /etc/redhat-release ]; then
  pretty_name="$(cat /etc/redhat-release)"
  name="$(expr "$pretty_name" : '\([^ ]*\)')" || true
  if [ -f /etc/centos-release ]; then
   pretty_name="$(cat /etc/centos-release)"
   name="$(expr "$pretty_name" : '\([^ ]*\)')" || true
  if [ -f /etc/almalinux-release ]; then
    pretty_name="$(cat /etc/almalinux-release)"
    name="$(expr "$pretty_name" : '\([^ ]*\)')" || true
  fi
  fi
  version="$(expr "$pretty_name" : '.* \([0-9].*\)')" || true
fi

### Output to a file instead of stdout
echo "node_os_info_custom{os=\""$name"\",version=\""$version"\",hostname=\""$hostname"\",$ip,cpu=\""$cpu"\",model=\""$model"\"} 1" >> /var/log/node_exporter/node_host_info.prom