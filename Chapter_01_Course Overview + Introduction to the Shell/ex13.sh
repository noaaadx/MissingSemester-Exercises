#!/bin/bash
# Exercise 13 — Find 5 most common file extensions in home directory

find ~ -type f -name "*.*" 2>/dev/null \
  | awk -F. '{print $NF}' \
  | sort \
  | uniq -c \
  | sort -rn \
  | head -5