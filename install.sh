#! /bin/bash
clear
printf '\033]2;INSTALLER\a'
echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1
clear
apt-get -y install gnome-terminal
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/Rishuscript" ]]
then
	echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
	sleep 4
	if [[ -d /root/Rishuscript ]]
	then
		rm -r /root/Rishuscript
	fi
	mkdir /root/Rishuscript
	cp -r "$DIR"/* /root/Rishuscript
	chmod +x /root/Rishuscript/install.sh
	gnome-terminal -- "bash /root/Rishuscript/install.sh"
fi
echo -e "Installing Rishuscript..."
sleep 1
echo -e "Fixing permissions"
sleep 2
chmod +x /root/Rishuscript/lh1
chmod +x /root/Rishuscript/lh2
chmod +x /root/Rishuscript/lh3
chmod +x /root/Rishuscript/lh31
chmod +x /root/Rishuscript/l
chmod +x /root/Rishuscript/lh4
chmod +x /root/Rishuscript/lh41
chmod +x /root/Rishuscript/lh21
chmod +x /root/Rishuscript/lh42
chmod +x /root/Rishuscript/lh43
chmod +x /root/Rishuscript/ls/l131.sh
chmod +x /root/Rishuscript/ls/l132.sh
chmod +x /root/Rishuscript/ls/l133.sh
chmod +x /root/Rishuscript/uninstall.sh
clear
echo -e "Copying script to /bin/Rishuscript"
sleep 1
mkdir /bin/Rishuscript
cd /root/Rishuscript
cp /root/Rishuscript/l /bin/Rishuscript
cp /root/Rishuscript/lh1 /bin/Rishuscript
cp /root/Rishuscript/lh2 /bin/Rishuscript
cp /root/Rishuscript/lh3 /bin/Rishuscript
cp /root/Rishuscript/lh31 /bin/Rishuscript
cp /root/Rishuscript/lh4 /bin/Rishuscript
cp /root/Rishuscript/lh41 /bin/Rishuscript
cp /root/Rishuscript/lh21 /bin/Rishuscript
cp /root/Rishuscript/lh42 /bin/Rishuscript
cp /root/Rishuscript/lh43 /bin/Rishuscript
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected.Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected.Good."
fi
while true
do
clear
echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time."
read UORI
if [[ "$UORI" = "u" ]]
then 
	clear
	echo -e "Type 'changelog' to see what's new on this version"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/Rishuscript")
	if [[ "$BASHCHECK" != "" ]]
	then
		echo -e "I SAID USE i ONLY ONE TIME..........."
		sleep 3
	fi
	echo -e "Adding Rishuscript to PATH so you can access it from anywhere"
	sleep 1
	export PATH=/bin/Rishuscript:$PATH
	sleep 1
	echo "export PATH=/bin/Rishuscript:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Open a NEW terminal and type 'Rishu' to launch the script"
sleep  4
gnome-terminal -- l
exit
