#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"

cd packages/apps/Settings
git apply ${DIR}/packages_apps_settings.diff --verbose
cd ../../..

cd frameworks/base
git apply ${DIR}/framework_base.diff --verbose
cd ../..

cd vendor/aosp
git apply ${DIR}/vendor_aosp.diff --verbose
cd ../..
