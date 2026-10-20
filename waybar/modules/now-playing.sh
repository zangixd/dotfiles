#!/usr/bin/env bash

# Only get song info if Spotify is running
if ! playerctl -l 2>/dev/null | grep -q "spotify"; then
  echo "Not Playing"
  exit 0
fi

# Get current song metadata
song=$(playerctl --player=spotify metadata --format '{{artist}} - {{title}}' 2>/dev/null)

# If no song is currently playing
if [ -z "$song" ]; then
  echo " Not Playing"
  exit 0
fi

echo "$song"
