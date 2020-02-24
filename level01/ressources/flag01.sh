#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "Need arg (snowcrash ip)"
	exit 1;
fi

scp -P4242 level01@$1:/etc/passwd `pwd`


~/JohnTheRipper/run/john --show  passwd