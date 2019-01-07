#!/bin/sh

tar -xzf WFF1_1.tar.gz
tar -xzf WFF1_2.tar.gz
tar -xzf WFF1_3.tar.gz
cat xa* > MO_WFF1_full_data.dat
rm xa*
