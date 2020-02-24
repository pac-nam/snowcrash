#!/usr/bin/env bash

cat $(find / -user flag00 -group flag00 -type f 2>&- | grep -v proc)