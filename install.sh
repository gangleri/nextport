#!/bin/sh

set -e 

{ # ensure the entire script is downloaded

	VERSION='1.0.0'
	EXE_URL='https://github.com/gangleri/nextport/releases/download/${VERSION}/nextport'
	MD5_URL='https://github.com/gangleri/nextport/releases/download/${VERSION}/md5sum'
	INSTALL_NAME='/usr/local/bin/nextport'
	MD5SUM='/usr/local/bin/md5sum'
	
	curl  -s -L -o $INSTALL_NAME $EXE_URL
	curl  -s -L -o $INSTALL_NAME $MD5_URL
	chmod +x $INSTALL_NAME
	md5sum -c $MD5SUM
}
