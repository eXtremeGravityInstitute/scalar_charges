#!/bin/sh

tar -xzf ENG_1.tar.gz
tar -xzf ENG_2.tar.gz
tar -xzf ENG_3.tar.gz
cat xa* > DEF_AP3_full_data.dat
rm xa*
