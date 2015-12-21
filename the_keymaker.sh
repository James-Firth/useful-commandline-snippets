#!/bin/bash


# Generates and pushes ssh keys for remote machines.


read -p "Enter host name you wish to generate keys for: " hostname
read -p "Enter a shortname for the host. eg 'sn' Allows for ssh sn. Leave blank for none: " shortname
read -p "Enter username for remote host: " remoteuser
read -p "Enter your email to be associated with this key: " email

if [ "$shortname" == "" ]; then
	shortname="$hostname"
fi

key_filename="$hostname""_id"
key_filepath="$HOME/.ssh/$key_filename"
ssh_config_path="$HOME/.ssh/config"


touch "$key_filepath"
ssh-keygen -t rsa -b 4096 -C "$email" -N "" -f "$key_filepath"

if [ $? -eq 0 ]; then
	if [ ! -f $ssh_config_path]; then
		echo "VisualHostKey yes" > $ssh_config_path
	fi

	echo "
Host $shortname
	User $remoteuser
	HostName $hostname
	IdentityFile $key_filepath
	VisualHostKey yes" >> $ssh_config_path

	echo "Key generation complete."
	echo "Now copying to remote server for passwordless login..."
	ssh-copy-id -i "$key_filepath.pub" $remoteuser@$hostname
fi
