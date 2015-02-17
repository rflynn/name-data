#!/bin/bash

set -v
set -e

echo -e '.separator ","\n.import app_c.csv surname_census2000' | sqlite3 surname_census.sqlite3

rm -f dist-first.csv

echo 'name,is_male,freq,cum_freq,rank'                     > dist-first.csv
cat dist.female.first | awk '{print $1",0,"$2","$3","$4}' >> dist-first.csv
cat dist.male.first   | awk '{print $1",1,"$2","$3","$4}' >> dist-first.csv

echo -e '.separator ","\n.import dist-first.csv givenname_census1990' | sqlite3 surname_census.sqlite3

