#!/bin/bash

for key in Kcompressibleflowcalculator.com*.key; do
    echo "\$INCLUDE $key" >>db.compressibleflowcalculator.com
done
