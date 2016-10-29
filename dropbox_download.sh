#!/bin/bash
TARGET=/home/pi/B2G_Prod
OLDTARGET=/home/pi/B2G_Prod_old
TMPDIR=$(mktemp -d)


/home/pi/Dropbox-Uploader/dropbox_uploader.sh download /Back2Game\ Produktion $TMPDIR #Move to parameter

diff <(cd $TARGET; sha256sum $(find . -type f|sort)) <(cd $TMPDIR; sha256sum $(find . -type f|sort))
if $?; then
	mv $TARGET $OLDTARGET
	mv $TMPDIR $TARGET

	killall fbi
else
	rm -Rf $TMPDIR
fi

