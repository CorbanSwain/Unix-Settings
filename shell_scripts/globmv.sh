#!/bin/bash

find "$2" -type f -iname "$1" -exec mv '{}' "$3" \;
