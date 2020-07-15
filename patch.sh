#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"

echo "Applying packages/apps/Settings"
cd packages/apps/Settings
git apply ${DIR}/packages_apps_settings.diff --verbose
cd ../../..

echo "Applying framework/base"
cd frameworks/base
git apply ${DIR}/framework_base.diff --verbose
cd ../..

echo "Applying vendor/aosp"
cd vendor/aosp
git apply ${DIR}/vendor_aosp.diff --verbose
cd ../..
