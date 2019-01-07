#!/bin/sh

tar -xzf MS2_1.tar.gz
tar -xzf MS2_2.tar.gz
tar -xzf MS2_3.tar.gz
tar -xzf MS2_4.tar.gz
cat xa* > DEF_MS2_full_data.dat
rm xa*
