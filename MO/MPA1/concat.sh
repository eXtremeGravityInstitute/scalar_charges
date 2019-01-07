#!/bin/sh

tar -xzf MPA1_1.tar.gz
tar -xzf MPA1_2.tar.gz
tar -xzf MPA1_3.tar.gz
cat xa* > MO_MPA1_full_data.dat
rm xa*
