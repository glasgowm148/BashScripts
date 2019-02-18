#!/bin/bash

cat file.txt | while read line;

do
    echo "$line" | wc -w
done