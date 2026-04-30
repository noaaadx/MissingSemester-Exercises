#!/bin/bash
# Exercise 3: 
# In the command find ~/Downloads -type f -name "*.zip" -mtime +30, the *.zip is a “glob”. 
# What is a glob? Create a test directory with some files and experiment with patterns like ls *.txt, ls file?.txt, and ls {a,b,c}.txt. 

find ~/Downloads -type f -name "*.zip" -mtime +30
 