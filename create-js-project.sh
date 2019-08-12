#!/bin/bash

if [ $# -lt 1 ] ; then 
   	echo "Please, insert the project name"
   	exit 1
fi

FOLDERNAME=$1
TESTS=$FOLDERNAME/tests
SRC=$FOLDERNAME/src

INDEX_FILE=index.js
INDEX_TEST_FILE=index.tests.js

mkdir $FOLDERNAME

mkdir $TESTS && mkdir $SRC

touch $TESTS/$INDEX_TEST_FILE && touch $SRC/$INDEX_FILE

touch $FOLDERNAME/.gitignore

touch $FOLDERNAME/README.md

cd $FOLDERNAME

git init

npm init --yes

cd ..

echo "Your project was created" 
