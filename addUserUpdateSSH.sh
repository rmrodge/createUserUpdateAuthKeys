#!/bin/bash

useradd <newUser>
echo "<PASSWORD>" | passwd --stdin <newUser>
usermod -aG wheel <newUser>
mkdir /home/<newUser>/.ssh
chmod 700 /home/<newUser>/.ssh
touch /home/<newUser>/.ssh/authorized_keys
chmod 640 /home/<newUser>/.ssh/authorized_keys
echo "<Paste userName publicKey...  ssh-rsa etc...> " >> /home/<newUser>/.ssh/authorized_keys
chown -R <newUser>: /home/<newUser>/.ssh/
