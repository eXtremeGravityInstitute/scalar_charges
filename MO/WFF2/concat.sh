#!/bin/sh

tar -xzf WFF2_1.tar.gz
tar -xzf WFF2_2.tar.gz
tar -xzf WFF2_3.tar.gz
cat xa* > MO_WFF2_full_data.dat
rm xa*
