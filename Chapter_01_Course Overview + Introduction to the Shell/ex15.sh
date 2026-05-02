#!/bin/bash
# Exercise 15 — Count lectures listed on the Missing Semester website

curl -s https://missing.csail.mit.edu/ \
  | grep -c '<li class="post-item">