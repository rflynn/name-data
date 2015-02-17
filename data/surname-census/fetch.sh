#!/bin/bash

# ref: http://www.census.gov/topics/population/genealogy/data/2000_surnames.html

set -v
set -e

# surnames in app_c.csv
[ -f names.zip ] || curl -O http://www2.census.gov/topics/genealogy/2000surnames/names.zip
test $(shasum names.zip | cut -c -40) = "2635de35a386f92a8c83bc42f1da82e340578584"
[ -e app_c.csv ] || unzip -o names.zip
test $(shasum app_c.csv | cut -c -40) = "6a567ae113524ace8a5735f07b910e3a4ef614ca"

# female given names
[ -f dist.female.first ] || curl -O http://www2.census.gov/topics/genealogy/1990surnames/dist.female.first
test $(shasum dist.female.first | cut -c -40) = "02bf005ebdc32f1c43b2f174f13b3b044d8c4542"

# male given names
[ -f dist.male.first ] || curl -O http://www2.census.gov/topics/genealogy/1990surnames/dist.male.first
test $(shasum dist.male.first | cut -c -40) = "36822d50aba542c0d28b4aa6cf0d4581a134c7c0"

