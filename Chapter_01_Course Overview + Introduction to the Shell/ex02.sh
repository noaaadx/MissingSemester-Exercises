#!/bin/bash
# Exercise 2: 
# What does the -l flag to ls do? Run ls -l / and examine the output. What do the first 10 characters of each line mean? (Hint: man ls)

ls -l /
 
#  Result: 
# total 120
# drwxr-xr-x  2 user admin 65536 Jan  5  2024 bin
# drwxr-xr-x  3 user admin  4096 Jan  5  2024 etc
# drwxr-xr-x  2 user admin     0 Jan  5  2024 include
# drwxr-xr-x  4 user admin     0 Jan  5  2024 lib
# -rw-r--r--  1 user admin  2238 Jul 11  2009 m.ico
# -rwxr-xr-x  1 user admin  7367 Nov 12  2012 msys.bat
# -rw-r--r--  1 user admin 37758 Jul 11  2009 msys.ico
# drwxr-xr-x  2 user admin     0 Jan  5  2024 postinstall
# drwxr-xr-x  3 user admin     0 Jan  5  2024 sbin
# drwxr-xr-x 13 user admin  4096 Jan  5  2024 share
# drwxr-xr-x  5 user admin     0 Jan  5  2024 var