#!/bin/sh

tar -xzf AP4_1.tar.gz
tar -xzf AP4_2.tar.gz
tar -xzf AP4_3.tar.gz
cat xa* > MO_AP4_full_data.dat
rm xa*
