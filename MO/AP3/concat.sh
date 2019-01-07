#!/bin/sh

tar -xzf AP3_1.tar.gz
tar -xzf AP3_2.tar.gz
tar -xzf AP3_3.tar.gz
cat xa* > MO_AP3_full_data.dat
rm xa*
