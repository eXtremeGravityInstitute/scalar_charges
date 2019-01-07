#!/bin/sh

tar -xzf MS0_1.tar.gz
tar -xzf MS0_2.tar.gz
tar -xzf MS0_3.tar.gz
tar -xzf MS0_4.tar.gz
cat xa* > MO_MS0_full_data.dat
rm xa*
