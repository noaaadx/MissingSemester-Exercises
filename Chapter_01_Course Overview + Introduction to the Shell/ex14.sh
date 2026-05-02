#!/bin/bash
# Exercise 14 — Count lines in all .sh files using xargs (not -exec)
# -print0 and -0 handle filenames with spaces

find . -name "*.sh" -print0 | xargs -0 wc -l