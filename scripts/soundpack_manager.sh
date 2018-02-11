#!/bin/bash

# Retrieve and/or update soundpacks used by the MSP protocol

# This script requires an argument, a path where sounds should be saved
if [[ $# -ne 1 ]]; then
  echo "Please provide a path for sounds."
  exit 1
fi

# The url where the soundpack is located.
soundpackURL='http://kallistimud.com/files/msppack.zip'
soundpackPath="$1"

get_soundpack() {
  # Recreate soundpack directory.
  rm -rf "$soundpackPath"
  mkdir -p "$soundpackPath"
  # Create a safe place to download the file
  if [[ "$(uname -s)" == "Darwin" ]];then
    local zipFile="$(mktemp /tmp/XXXXXX.zip)"
    else
    local zipFile="$(mktemp -p /tmp XXXXXX.zip)"
  fi
  # Get the zip file
  curl -s --connect-timeout 5 "$soundpackURL" -o "$zipFile"
  # md5sum the file so we can check for updates.
  md5sum "$zipFile" | cut -d ' '  -f 1 > "$soundpackPath/version.txt"
  # Extract the file into the directory, overwrite existing files with the same name because of possible updates.
  unzip -o -d "$soundpackPath" "$zipFile" &> /dev/null
  # remove the zip file.
  rm "$zipFile"
}

# If the version.txt file doesn't exist we need to get the pack
[[ -f "$soundpackPath/version.txt" ]] || {
  echo "Downloading sounds, please wait...";
  get_soundpack;
  exit 0;
}

# Check for updates
oldSum="$(cat "$soundpackPath/version.txt")"
newSum="$(curl -s "${soundpackURL%.zip}.md5")"
[[ "$newSum" == "$oldSum" ]] || {
  echo "Updating sounds, please wait...";
  get_soundpack;
}
exit 0
