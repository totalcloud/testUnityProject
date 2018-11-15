#! /bin/sh

# See $BASE_URL/$HASH/unity-$VERSION-$PLATFORM.ini for complete list
# of available packages, where PLATFORM is `osx` or `win`
BASE_URL=https://beta.unity3d.com/download/7f25373c3e03
VERSION=2017.3.1p4

UNITY_OSX_PACKAGE="MacEditorInstaller/Unity-$VERSION.pkg"
# UNITY_WINDOWS_TARGET_PACKAGE="MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-$VERSION.pkg"


download() {
	
	FILE=$1
	URL="$BASE_URL/$FILE"

	#download package if it does not already exist in cache
	if [ ! -e $UNITY_DOWNLOAD_CACHE/`basename "$FILE"` ] ; then
		echo "$FILE does not exist. Downloading from $URL: "
		curl -o $UNITY_DOWNLOAD_CACHE/`basename "$FILE"` "$URL"
	else
		echo "$FILE Exists. Skipping download."
	fi
}

install() {
	PACKAGE=$1
	download "$PACKAGE"
	
	echo "Installing "`basename "$PACKAGE"`
	sudo installer -dumplog -package $UNITY_DOWNLOAD_CACHE/`basename "$PACKAGE"` -target /
}



echo "Contents of Unity Download Cache:"
ls "$UNITY_DOWNLOAD_CACHE"

echo "Installing Unity..."
install "$UNITY_OSX_PACKAGE"
# install "$UNITY_WINDOWS_TARGET_PACKAGE"

