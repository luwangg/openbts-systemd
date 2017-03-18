#!/bin/sh -
if [ ! -e /var/run/OpenBTS ]; then
	mkdir /var/run/OpenBTS
fi

if [ ! -e /var/run/rrlp ]; then
	mkdir /var/run/rrlp
        chmod 777 /var/run/rrlp
fi

#place for CRD data
if [ ! -e /var/lib/OpenBTS ]; then
        mkdir /var/lib/OpenBTS
fi

# make sure permissions are set up correctly
if [ -d /var/lib/asterisk/sqlite3dir ]; then
        chown -R asterisk:www-data /var/lib/asterisk/sqlite3dir
        chmod 775 /var/lib/asterisk/sqlite3dir
        chmod 664 /var/lib/asterisk/sqlite3dir/sqlite3*
fi
