#!/bin/bash
set -eu -o pipefail

file=oracle-database-xe-18c-1.0-1.x86_64.rpm

preinstall_file=oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm

script_dir="$(cd "$(dirname "$0")" && pwd)"
echo "script_dir: $script_dir"

# load environment variables from .env
set -a
if [ -e "$script_dir"/.env ]; then
  . "$script_dir"/.env
  echo '.env loaded!'
else
  echo 'Environment file .env not found!'
  exit 1
fi
set +a

echo 'Install preinstall file'
yum -y localinstall "$script_dir/$preinstall_file"

echo 'Install database'
yum -y localinstall "$script_dir/$file"

echo 'Creating and Configuring an Oracle Database'
echo -e "${ORACLE_PASSWORD}\n${ORACLE_PASSWORD}" | /etc/init.d/oracle-xe-18c configure

echo 'Automating Shutdown and Startup'
systemctl daemon-reload
systemctl enable oracle-xe-18c
