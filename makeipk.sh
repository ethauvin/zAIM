#!/bin/sh
PACKAGE="zAIM"
VERSION="0.1.2"

rm -f *.ipk *.gz *.tar

tar --exclude CVS -cvf control.tar ./control
gzip control.tar

tar --exclude CVS -cvf data.tar ./home
gzip data.tar

tar -cvf ${PACKAGE}.tar ./control.tar.gz ./data.tar.gz
gzip ${PACKAGE}.tar

mv ${PACKAGE}.tar.gz ${PACKAGE}_${VERSION}_arm.ipk

rm -f *.gz *.tar
