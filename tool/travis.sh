#!/bin/bash

# Fast fail the script on failures.
set -e

export PATH=`pwd`/../flutter/bin:`pwd`/../flutter/bin/cache/dart-sdk/bin:$PATH
flutter config --no-analytics
flutter doctor

# We should be using dart from ../flutter/bin/cache/dart-sdk/bin/dart.
echo "which dart: " `which dart`

# install packages
flutter pub get

# Verify that the libraries are error free.
flutter analyze

# Run the tests.
# TODO: run the tests
# flutter test
