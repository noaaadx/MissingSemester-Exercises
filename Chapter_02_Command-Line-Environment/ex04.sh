#Start a sleep 10000 job in a terminal, background it with Ctrl-Z and continue its execution with bg.
#Now use pgrep to find its pid and pkill to kill it without ever typing the pid itself. (Hint: use the -af flags).


sleep 10000

# with the comand: 
pgrep -af sleep
# you can find the pid of the sleep command, and then with:
pkill -af sleep
# you can kill the sleep command without typing the pid itself.