#!/bin/bash
# gg.sh
# script to simplify commit and push

git add .
git commit -m "$1"
git push
