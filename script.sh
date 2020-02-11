#!/bin/bash   

#Script to update the manifest with data for the Enterprise release

MANIFEST_FILE_NAME='manifest.plist' #Change if you don't use the manifest in this repository
REMOTE_DESTINATION_FOLDER=$1
BUNDLE_VERSION=$2
REMOTE_FILE_NAME=$3
REMOTE_DESTINATION_PATH="$REMOTE_DESTINATION_FOLDER/$REMOTE_FILE_NAME"

/usr/libexec/Plistbuddy -c "Set :items:0:assets:0:url $REMOTE_DESTINATION_PATH" "$PWD/$MANIFEST_FILE_NAME"
/usr/libexec/Plistbuddy -c "Set :items:0:metadata:bundle-version $BUNDLE_VERSION" "$PWD/$MANIFEST_FILE_NAME"

exit 0

