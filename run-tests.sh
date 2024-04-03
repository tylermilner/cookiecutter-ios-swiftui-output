#!/bin/bash

SCHEME='MyApp'
DESTINATION='platform=iOS Simulator,OS=latest,name=iPhone 15'

xcodebuild test -scheme $SCHEME -destination "$DESTINATION"
