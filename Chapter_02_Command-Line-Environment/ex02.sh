#Read man ls and write an ls command that lists files in the following manner:
#Includes all files, including hidden files
#Sizes are listed in human readable format (e.g. 454M instead of 454279954)
#Files are ordered by recency
#Output is colorized

ls -alh --color=auto --sort=time

#The -a flag includes all files, including hidden files.
#The -l flag lists files in long format, which includes file sizes and other details.
#The -h flag makes file sizes human readable.
#The --color=auto flag colorizes the output based on file types.
#The --sort=time flag orders files by recency, with the most recently modified files listed

