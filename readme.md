#Useful Snippets of commandline code

# General Information o7

* The `^` (carat) symbol is often used to denote the `Ctrl` button so `^C` means `Ctrl+C`

### SCP

References: http://www.hypexr.org/linux_scp_help.php

Copy the file "foobar.txt" from the local host to a remote host

`scp foobar.txt your_username@remotehost.edu:/some/remote/directory`

To copy a directory:

`scp -r "path/to/directory" your_username@remotehost.edu:/some/remote/directory`

## SSH keys

http://www.thegeekstuff.com/2008/11/3-steps-to-perform-ssh-login-without-password-using-ssh-keygen-ssh-copy-id/

Copy your ssh key to another machine to avoid typing in passwords

`ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host`


## Tar

untar
`tar -xvf filename`

## Process Management

Find all the processes that contain a word, such as all python processes
`ps aux | grep <search string>` - shows a lot of output including the path of the file and args (more detailed)
`ps -e | grep <search string>` - shows the PID and the process name (much cleaner)

Parallelize processes.
Using the code below command1 and command2 will be run in the background and command3 will be run normally. The benefit is when a SIGINT (via `^C`) is sent, all 3 commands will be killed.
```
trap 'kill %1 kill %2' SIGINT
command1 & command2 & command3
```

## Grep

Use status code to determine if that line of text exists in that file.
`grep -Fxq "line of text" /path/to/file` 

# Useful CLI programs to install/uses

* Woof
  * Simple file server
* mpv
  * Commandline media player
* tmux
  * Terminal multiplexer. Better than screen (debatably) and useful for servers.
  * 
  
# TODO

* Eventually split this into better chunks/files.
* Add useful snippets for diffregits
