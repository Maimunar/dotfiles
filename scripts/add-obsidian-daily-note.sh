#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Daily Note
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Your Note" }
# @raycast.packageName dev-utils

# Documentation:
# @raycast.description Adds a note to the obsidian daily note for today
# @raycast.author Maimunar
# @raycast.authorURL https://raycast.com/Maimunar


VAULT_LOCATION="/Users/aleksandarivanov/docs/obsidian-vault"
today_date=$(date -I)

file="$VAULT_LOCATION/0-Inbox/Daily/$today_date.md"

echo $1 >> $file

