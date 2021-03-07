#!/bin/bash

echo "Creating Screenshot directory..."
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots
