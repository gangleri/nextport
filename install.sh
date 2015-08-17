#!/bin/sh

set -e 

{ # ensure the entire script is downloaded

	EXE_URL='https://github.com/gangleri/nextport/releases/download/1.0.0/nextport'
	MD5_URL='https://github.com/gangleri/nextport/releases/download/1.0.0/md5sum'
	INSTALL_NAME='/usr/local/bin/nextport'
	MD5SUM='/usr/local/bin/md5sum'
	
	curl  -s -L -o $INSTALL_NAME $EXE_URL
	curl  -s -L -o $MD5SUM $MD5_URL
	chmod +x $INSTALL_NAME
	pushd `pwd` > /dev/null
	cd '/usr/local/bin'
	md5sum -c $MD5SUM
	rm -f $MD5SUM > /dev/null
	popd > /dev/null
}
