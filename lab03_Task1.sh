#!/bin/bash

# Mark Glasgow : 2336003G 

# Task 1 :: Write a script that creates the following directories

mkdir -p -- "data"
# || exit in case cd fails
cd data || exit

mkdir -p -- "processed"
cd ..

mkdir -p -- "docs"

