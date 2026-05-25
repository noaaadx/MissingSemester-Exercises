sudo apt install htop stress
htop &
taskset --cpu-list 0,2 stress -c 3