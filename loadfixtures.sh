#!/bin/bash

NAME[1]="eba_portfolio"

source venv/bin/activate
for i in ${NAME[@]}
do
python3 manage.py loaddata --format=json $i  $i/fixtures/$i.json
done

