#!/usr/bin/env bash
set -e

# Wrapper script for Android release builds
# Run from repo root:
#   ./gradlew assembleRelease
#   ./gradlew bundleRelease

if [ ! -d "android" ]; then
  echo "Error: android/ directory not found. Run Capacitor sync first."
  echo "Try: npx cap sync android"
  exit 1
fi

cd android
./gradlew "$@"
