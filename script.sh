#!/bin/bash   

echo Ready to release... 

MANIFEST_FILE_NAME='manifest.plist' #Change this if your manifest has different name
SOURCE_PATH=$1
REMOTE_DESTINATION_FOLDER=$2
BUNDLE_VERSION=$3
REMOTE_FILE_NAME=$4
REMOTE_DESTINATION_PATH="$REMOTE_DESTINATION_FOLDER/$REMOTE_FILE_NAME"

echo $REMOTE_DESTINATION_PATH

/usr/libexec/Plistbuddy -c "Set :items:0:assets:0:url $REMOTE_DESTINATION_PATH" "$PWD/$MANIFEST_FILE_NAME"
/usr/libexec/Plistbuddy -c "Set :items:0:metadata:bundle-version $BUNDLE_VERSION" "$PWD/$MANIFEST_FILE_NAME"



exit 0

