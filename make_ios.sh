#!/usr/bin/env bash

shellPath=`echo $PWD/``echo ${0%/*}`

cd iOS/slua
xcodebuild
cd ../..

cp -fr iOS/slua/build/Release-iphoneos/libslua.a build/iOS/libslua.a

