#!/bin/bash

INSTALL_PACKAGE=/opt/GPFS411
yum -y  install ksh
yum -y  install make
rpm -ivh  $INSTALL_PACKAGE/gpfs.base-4.1.1-1.x86_64.rpm
rpm -ivh  $INSTALL_PACKAGE/gpfs.gpl-4.1.1-1.noarch.rpm
rpm -ivh  $INSTALL_PACKAGE/gpfs.msg.en_US-4.1.1-1.noarch.rpm
#rpm -ivh  $INSTALL_PACKAGE/gpfs.gskit-8.0.50-40.x86_64.rpm
rpm -ivh  $INSTALL_PACKAGE/gpfs.ext-4.1.1-1.x86_64.rpm
rpm -ivh  $INSTALL_PACKAGE/gpfs.docs-4.1.1-1.noarch.rpm
rpm -ivh  $INSTALL_PACKAGE/gpfs.hadoop-connector-2.7.0-3.x86_64.rpm
cd /usr/lpp/mmfs/src
make Autoconfig
make World
make InstallImages
