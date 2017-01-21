#!/usr/bin/env bash

for configfile in tests/travis-ci/config*.php; do
   echo $configfile
   sudo cp -f $configfile public_html/lists/config/config.php
   mysql -e 'drop database if exists phplistdb; create database phplistdb; '
   vendor/bin/behat
done