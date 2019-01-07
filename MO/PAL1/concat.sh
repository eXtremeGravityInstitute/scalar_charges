#!/bin/sh

tar -xzf PAL1_1.tar.gz
tar -xzf PAL1_2.tar.gz
tar -xzf PAL1_3.tar.gz
cat xa* > MO_PAL1_full_data.dat
rm xa*
