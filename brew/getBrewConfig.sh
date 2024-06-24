#!/usr/bin/env bash

# normal leaves
brew leaves | tee leaves.txt | xargs brew desc --eval-all > leavesInfo.txt

# cask apps
brew ls --casks | tee casks.txt | xargs brew desc --eval-all > casksInfo.txt
