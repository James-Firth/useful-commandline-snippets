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


