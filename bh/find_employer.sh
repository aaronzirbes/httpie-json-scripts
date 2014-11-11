#!/bin/bash

employer_tax_id=$1

# 410639421

sql="SELECT bloom_id, name FROM employer WHERE federal_tax_id = '${employer_tax_id}';"

echo "$sql" | mysql -u root bloomhealth

