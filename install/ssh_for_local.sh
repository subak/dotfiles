#!/usr/bin/env bash

set -eux

client=$(hostname -s)
certs_dir=${HOME}/Repos/certs
ssh_dir=${HOME}/.ssh
key=${certs_dir}/client/${client}.key
pub=${certs_dir}/client/${client}.pkcs8
cert=${certs_dir}/client/${client}.pem

git clone git://pro7core/certs.git ${certs_dir}
mkdir -pv ${ssh_dir}
chmod 700 ${ssh_dir}

ln -s ${key} ${ssh_dir}/id_rsa
ln -s ${pub} ${ssh_dir}/id_rsa.pub
ln -s ${cert} ${ssh_dir}/id_rsa.pem
chmod 600 ${key}
chmod 600 ${cert}

cd ${certs_dir}
git remote rm origin
git remote add origin git://localhost/certs.git
