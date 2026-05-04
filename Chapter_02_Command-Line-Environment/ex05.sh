#Go to ~/.ssh/ and check if you have a pair of SSH keys there. If not, generate them with ssh-keygen -a 100 -t ed25519. 
#It is recommended that you use a password and use ssh-agent, more info here.

Host admin
    User jhoe
    HostName localhost
    IdentityFile ~/.ssh/id_ed25519
    LocalForward 9999 localhost:8888´


ssh admin
ssh localhost

#The ssh command will use the configuration specified 
#in the ~/.ssh/config file to connect to the localhost using
#the admin configuration.