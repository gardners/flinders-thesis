#!/bin/bash

for FILE in $*
do
  aspell --lang=en_EN -c $FILE
done
