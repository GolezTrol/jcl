#!/bin/sh
#
# shell script to build and execute QJediInstaller
#
# Robert Rossmair, 2004-02-16
#

DCC="dcc -I../source -U../source/common"

cd install
$DCC QJediInstaller.dpr         # build...
../bin/QJediInstaller           # ...and run installer
rm *.dcu                        # clean up source directories
rm ../source/common/*.dcu

