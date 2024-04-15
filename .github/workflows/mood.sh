#!/bin/bash

# Array of messages
moods=("I'm happy" "I'm sad", "I'm excited", "I'm tired", "I'm bored")

# Get a random index
random_index=$((RANDOM % ${#moods[@]}))

# Select the message at the random index
message="${moods[$random_index]}"

# Update the README.md with the chosen message
echo "$message today ($(date +'%Y-%m-%d'))" >> ../README.md

# (Optional) Remove previous message (if needed)
sed '/I'"m [^"]* today"/d' README.md  # Uncomment to remove previous line

git config user.name "MarkRywell"
git config user.email "markgaje43@gmail.com"
git add README.md
git commit -m "Update README.md with my mood today"
git push origin main