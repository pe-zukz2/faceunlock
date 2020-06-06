#!/bin/bash

cd packages/apps/Settings
git reset --hard
git clean -fd
cd ../../..

cd frameworks/base
git reset --hard
git clean -fd
cd ../..

cd vendor/aosp
git reset --hard
git clean -fd
cd ../..
