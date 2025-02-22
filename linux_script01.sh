#!/usr/bin/env bash
###################################
#Develop by: Tomer Malka Pinto
#Purpose: linux task script
#Date: 20/02/2025
#Version: 0.0.1
set -o errexit
set -o pipefail
set -o nounset
set -x
##################################

function install_software(){
	echo "Updating the system:"
	sleep 3
        sudo dnf update && sudo dnf upgrade -y
	echo "Installing all relevant tools:"
	sleep 3
	for i in vim tree wget curl tar telnet net-tools traceroute nmap whois openssh-server
	do
		sudo dnf install -y "$i"
		status_code=$?
		sleep 3
		if [ $status_code -ne 0 ]; then
			echo "$i failed to install (exit code: $?)"
			sleep 3
		else 
			echo "$i successfully installed"
			sleep 3
		fi
	done
}

function configure_software(){
	echo "set number" >> ~/.vimrc
	echo "syntax on" >> ~/.vimrc
	echo "Vim configured"
	sleep 3

	echo "retry-connrefused = on" >> ~/.wgetrc
        echo "timeout = 30" >> ~/.wgetrc
        echo "Wget configured."
	sleep 3
        
	echo "alias traceroute='traceroute -I'" >> ~/.bashrc
        echo "Traceroute configured."
	sleep 3

	echo "silent" >> ~/.curlrc
        echo "Curl configured."

	sudo systemctl enable sshd
	sudo systemctl start sshd
	echo "Enabling and starting SSH service"
        sudo systemctl is-active --quiet sshd && echo "the SSH service working" || echo "the SSH service not working"

}
function backup_configuration(){
	 backup="$HOME/.backup"
	 mkdir -p "$backup"
         chmod 755 "$backup"
         for i in ~/.vimrc ~/.wgetrc ~/.curlrc
         do
	 if [ -f "$i" ]; then
                 sudo cp "$i" "$backup/"
                 echo "backuping configuration files"
                 sleep 3
	 else 
		 echo "$i not found"
		 sleep 3
	 fi
         done
}


function main(){
	install_software
	configure_software
        backup_configuration
}
main
