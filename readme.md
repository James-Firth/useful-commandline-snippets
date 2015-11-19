#Useful Snippets of commandline code

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
