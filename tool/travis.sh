#!/bin/bash

# Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
# for details. All rights reserved. Use of this source code is governed by a
# BSD-style license that can be found in the LICENSE file.

# Fast fail the script on failures.
set -e

function dartanalyzer {
    if [[ $TRAVIS_OS_NAME == "windows" ]]; then
        command dartanalyzer.bat "$@"
    else
        command dartanalyzer "$@"
    fi
}

function pub {
    if [[ $TRAVIS_OS_NAME == "windows" ]]; then
        command pub.bat "$@"
    else
        command pub "$@"
    fi
}

# Analyze the codebase.
dartanalyzer --fatal-warnings --fatal-infos \
  lib/ \
  test/

# Run the unit tests.
pub run test
