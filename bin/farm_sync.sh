#!/bin/bash

BASE_CONF_DIR=/opt/kamp/

cd /tmp/ && rm -rf kampconfiguration
cd /tmp/ && git clone https://github.com/yikiksistemci/kampconfiguration.git \
&& cd /tmp/kampconfiguration && git checkout main

mkdir -p ${BASE_CONF_DIR} || echo "konfig klasoru olusturulamadi."


rsync -aP /tmp/kampconfiguration/* --exclude=".git" ${BASE_CONF_DIR}