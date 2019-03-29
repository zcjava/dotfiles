#!/bin/bash
curdir=$(cd `dirname $0` ; pwd)
echo $curdir
cp -r ${curdir}/fonts/* ~/Library/Fonts/
