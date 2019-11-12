#!/bin/bash

# Fast fail the script on failures.
set -e

export PATH=`pwd`/flutter/bin:`pwd`/flutter/bin/cache/dart-sdk/bin:$PATH
flutter config --no-analytics
flutter doctor

# We should be using dart from ../flutter/bin/cache/dart-sdk/bin/dart.
echo "which dart: " `which dart`

# Verify that the libraries are error free.
pub global activate tuneup
pub global run tuneup check

# Run the tests.
# TODO: install flutter, run the tests
# flutter test
