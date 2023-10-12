#!/bin/bash
set -ex

yum update
yum install dirmngr --install-recommends
yum adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C5AD17C747E3415A3642D57D77C6C491D6AC1D69
echo "deb https://dl.k6.io/deb stable main" | sudo tee /etc/apt/sources.list.d/k6.list
yum update
yum install k6
