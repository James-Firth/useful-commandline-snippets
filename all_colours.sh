#!/bin/bash

#Displays all bash colours with the codes needed to acheive that background/foreground colour.

#from http://askubuntu.com/questions/27314/script-to-display-all-terminal-colors
for x in 0 1 4 5 7 8; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo "";
exit 0;
