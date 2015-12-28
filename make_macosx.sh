#!/bin/sh

shellPath=`echo $PWD/``echo ${0%/*}`

cd MacOSX/slua
xcodebuild
cd ../..

cp -fr MacOSX/slua/build/Release/ build/
