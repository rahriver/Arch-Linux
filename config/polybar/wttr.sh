#!/bin/bash

# Query weather information for Atlanta, United States in Celsius from wttr.in.
weather=$(curl -sS "wttr.in/Atlanta?m&format=%C+%t+%h")

# Check if data was retrieved successfully.
if [ -z "$weather" ]; then
  echo "Error: Unable to retrieve weather data for Atlanta."
  exit 1
fi

# Extract temperature and humidity using regular expressions.
temperature=$(echo "$weather" | grep -oE '[+-]?[0-9]+°C')
humidity=$(echo "$weather" | grep -oE '[0-9]+%')

# Remove temperature and humidity from the output to isolate the condition.
condition=$(echo "$weather" | sed -E "s/[+-]?[0-9]+°C//; s/[0-9]+%//" | xargs)

# Select an appropriate icon based on the weather condition.
case "$condition" in
  Clear*)
    icon="" ;;
  "Partly cloudy"*)
    icon="" ;;
  Cloudy*)
    icon="" ;;
  Mist* | Fog*)
    icon="" ;;
  "Light rain"*)
    icon="" ;;
  "Moderate rain"*)
    icon="" ;;
  "Heavy rain"*)
    icon="" ;;
  Overcast*)
    icon="" ;;
  *)
    icon="" ;;
esac

# Output the formatted weather information.
echo "$icon $condition $temperature $humidity"

