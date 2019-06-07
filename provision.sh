#!/bin/bash

yum install -y httpd vim

cp /vagrant/maintenance.conf /etc/httpd/conf.d/
cp /vagrant/index.html /var/www/html/

service iptables stop
service httpd start
