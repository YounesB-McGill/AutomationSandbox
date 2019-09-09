#!/bin/bash

for f in src/ca/mcgill/cleancode/*.java; do
    java -jar lib/checkstyle-8.24-all.jar -c config/checkstyle/checkstyle.xml ${f}
done