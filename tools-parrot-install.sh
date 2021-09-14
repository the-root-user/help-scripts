#!/usr/bin/bash

#color variables
Black='\033[30m'
R='\033[31m'
BRIGHTRED='\033[31;1m' #16-colors
G='\033[32m'
O='\033[33m'
B='\033[34m'
M='\033[35m'
C='\033[36m'
W='\033[37m'
# RESET= '\033[0m'
# 256-colors
echo -e "\033[38;5;198m Hi UF4Q" # General Way "\033[38;5;${id}m HELLO ROOT"
#CLEARBLUF="-y  1> /dev/null"
anim=(
      ' ------------ 3'
      ' --------     2'
      ' ----         1' )
spin(){
	A=0
	if [ "$A" -lt "3" ]
	then
    for i in "${anim[@]}"
    do
        echo -ne "\r${i}" #$(figlet -f small ${i})"
        sleep 1
    done
    A=A+1
	fi
}
#spini="$(spin)"
echo -e "\n${R}[${O}${R}]${B} Installing Your Tools in ${C}"; #$spini ${C}";
spin #function call

#echo -e "\n{B}[~] Let's Begin.. ${O}      \n
#      履  ﱮ                                    甆                      (heartbeat) (diamond)     ﲎ ﴂ  ﴢ             ﲮ  ✔ ✘         滛 滋  望 歹 摒 敖 " $W;
sudo apt update

echo -e "\n{B}[~] Installing BpyTop..." $W;
sudo apt install bpytop

echo -e "\n${B}[+] Installing Terminator... " $W;
if [ -f /bin/terminator ]; then
	echo -e "\n${G}[✔] Terminator is already installed. " $W;
else
  sudo apt install terminator -y  1> /dev/null && echo -e "\n${G}[✔] Installed."
fi
echo -e "\n${B}[+] Do you want to install Terminator themes ? ${C}(y/n): " $W;
read  REPLY;
        if [[ "$REPLY" =~ ^[y/Y]$ ]];
        then
					echo -e "\n${B}[+] Installing... " $W;
					mkdir -p $HOME/.config/terminator/plugins
					wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"
					echo -e "\n${G}[✔] Installed."
			  fi
# echo -e "\n${B}[+] Do you want to install Nvidia Drivers now? ${C}(y/n): " $W;
# read  REPLY;
#         if [[ "$REPLY" =~ ^[y/Y]$ ]];
#         then
# 					echo -e "\n${B}[+] Installing Nvidia Drivers... " $W;
#						echo -e "\n${G}[✔] Installed."
# 			  fi

echo -e "\n${B}[+] Installing Sublime-Text... " $W;
if [ -f /bin/subl ]; then
	echo -e "\n${G}[✔] Sublime-Text is already installed. " $W;  
else
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  sudo apt-get install apt-transport-https
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt update -y  1> /dev/null 
  sudo apt install sublime-text -y  1> /dev/null && echo -e "\n${G}[✔] Installed."
fi

echo -e "\n${B}[+] Installing Anonsurf-cli... " $W;
sudo apt install anonsurf-cli -y  1> /dev/null
  
echo -e "\n${B}[+] Installing Albert (app-launcher)... " $W;
if [ -f /bin/albert ]; then
	echo -e "\n${G}[✔] Albert is already installed. " $W; 
else
	curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
	echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
	sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
	sudo apt update 1> /dev/null
	sudo apt install albert -y 1> /dev/null && echo -e "\n${G}[✔] Installed."
fi

echo -e "\n${B}[+] Installing Brave (a nice web broser)... " $W;
if [ -f /bin/brave-browser ]; then
	echo -e "\n${G}[✔] Brave is already installed. " $W; 
else
  sudo apt install apt-transport-https curl gnupg
  curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
  echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sudo apt update 1> /dev/null
  sudo apt install brave-browser -y  1> /dev/null && echo -e "\n${G}[✔] Installed."
fi

echo -e "\n${B}[+] Installing Nautilus (an awesome file browser) and some extensions... " $W;
if [ -f /bin/nautilus ]; then
	echo -e "\n${G}[✔] Nautilus is already installed. " $W;  
else
  sudo apt install nautilus nautilus-admin nautilus-image-converter nautilus-wipe -y  1> /dev/null && echo -e "\n${G}[✔] Installed." 
fi

echo -e "\n${B}[+] Installing KTouch and Kturtle" $W;
if [ -f /bin/ktouch ]; then
  echo -e "\n${G}[✔] KTouch is already installed. " $W;  
else
  sudo apt install ktouch kturtle -y  1> /dev/null && echo -e "\n${G}[✔] Installed."
fi

echo -e "\n${B}[+] Installing Pompem (Exploit and Vulnerability Finder) and Searchsploit & exploitdb (some must have)... " $W;
sudo apt install pompem exploitdb 

# echo -e "\n${B}[+] Installing Plank (an awesome dock)... " $W;
# if [ -f /bin/plank ]; then
# 	echo -e "\n${G}[✔] Plank is already installed. " $W;  
# else
#   sudo apt install plank -y  1> /dev/null;   
# fi

echo -e "\n${B}[+] Installing HPing3 (an Active Network Smashing Tool)... "$W;
sudo apt install hping3

echo -e "\n${B}[+] Installing Vlc (probably, the best media player)... "$W;
sudo apt install vlc -y  1> /dev/null

echo -e "\n${B}[+] Do you want to install Some Awesome Tools? ${C}(y/n): "$W;
read  REPLY;
        if [[ "$REPLY" =~ ^[y/Y]$ ]];
        then
					echo -e "\n${G}[✔] Installing..."
					echo -e "${B}[*] Search That Hash"$W
					pip3 install search-that-hash
					echo -e "${B}[*] Hakrawler"$W
					go get github.com/hakluke/hakrawler
					echo -e "${B}[*] Pwncat"$W
					pip install git+https://github.com/calebstewart/pwncat.git
					echo -e "${B}[*] Xsrfprobe"$W
					pip3 install xsrfprobe
					echo -e "${B}[*] Osmedius"$W
					git clone https://github.com/j3ssie/Osmedeus && cd Osmedeus && ./install && cd ..
					echo -e "${B}[*] WayBackurls"$W
					go get github.com/tomnomnom/waybackurls
					echo -e "${B}[*] Autorecon"$W
					git clone https://github.com/Tib3rius/AutoRecon.git && cd AutoRecon && pip3 install -r requirements.txt && cd ..
					echo -e "${B}[*] Volatility 3"$W
					git clone https://github.com/volatilityfoundation/volatility3.git
					echo -e "${B}[*] Rustscan"$W
					cargo install rustscan
					echo -e "${B}[*] Arjun"$W
					git clone https://github.com/s0md3v/Arjun.git && cd Arjun && python3 setup.py install && cd ..
					echo -e "${B}[*] SecLists"$W
					wget https://github.com/danielmiessler/SecLists/archive/master.zip
					echo -e "\n${G}[✔] Installed."
			  fi

echo -e "\n${B}[+] Do you want to install Zsh Plugins? ${C}(y/n): " $W;   
read  REPLY;
        if [[ "$REPLY" =~ ^[y/Y]$ ]];
        then
					echo -e "\n${B}[+] Installing Zsh Plugins... " $W;   
					echo -e "\n{B}[*] First installing oh-my-zsh (plugin manager)... " $W;   
					git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh/;   
					echo -e "\n{B}[*] Now, installing Plugins... " $W;
					git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting;
					git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions;
					git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/plugins/completions; cd ~
		 			echo -e "\n{B}[*] Now, installing Theme: p10k-zsh ... " $W;
		            git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
					# Worthy steps
					#cp zsh-theme-kiwi-modified ~/.oh-my-zsh/themes/kiwi.zsh-theme
					#cp .p10k.zsh ~/.p10k.zsh
					#cp my-modified.zshrc ~/.zshrc
					echo -e "\n{B}[~] Now, Zsh is your default shell!" $W;
					#echo -e "\n{B}[~] Let's make Zsh your default shell!" $W;
					#echo -e "\n{B}[~] Enter /bin/zsh below, if you don't want (or it's already /bin/zsh) then press ENTER to make it stay as it is" $W;
					chsh -s zsh && echo -e "\n${G}[✔] Everything done."
			  fi

echo -e "\n${B}[+] Do you want to install Nvidia Drivers now? ${C}(y/n): " $W;
read  REPLY;
        if [[ "$REPLY" =~ ^[y/Y]$ ]];
        then
					echo -e "\n${B}[+] Installing Nvidia Drivers... " $W;
					 
					echo -e "\n{B}[*] Blacklisting Nouveau Drivers... " $W;
					sudo touch /etc/modprobe.d/blacklist-nvidia-nouveau.conf
					echo "blacklist nouvea \noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nvidia-nouveau.conf
					echo -e "\n{B}[*] Updating Kernle module... " $W;
					sudo update-initramfs -u
					echo -e "\n{B}[*] Installing Nvidia-legacy-340xx... " $W;
					  
					sudo apt install xserver-xorg-video-nvidia-legacy-340xx && echo -e "\n${G}[✔] Installed. Reboot Your PC."
			  fi

# echo -e "\n${B}[+] Installing Vim and some of its required things... " $W;
# sudo apt install vim vim-addon-manager vim-syntax-gtk vim-runtime vim-scripts vim-asciidoc 1> /dev/null

# echo -e "\n${B}[+] Installing Compiz (Nice & Lite Window Manager)
# for MATE... " $W;
# if [ -f /bin/compiz ]; then
# 	echo -e "\n${G}[✔] You didn't tell me Compiz is already installed. " $W;
# else
#    sudo apt install compiz compiz-mate compiz-boxmenu compiz-plugins-default fusion-icon compiz-plugins-extra -y  1> /dev/null
# echo -e "\n${G}[✔] Compiz has got installed. " $G
# echo -e "\n${C} ~ ${O} Remember to put the Configs! " $G
# fi

# echo -e "\n${B}[+] Installing Kate (a very awesome and powerful text-editor)... " $W;
# if [ -f /bin/kate ]; then
# 	echo -e "\n${G}[✔] Kate is already installed. " $W;
# else
#    sudo apt install kate -y  1> /dev/null
# echo -e "\n${G}[✔] Kate has been installed. " $G
# fi

echo -e "\n${B}[+] Fetching Linpeas and LinEnum (Linux PrivEsc scripts).." $W;
if [ -f ~/linpeas.sh ]; then
	echo -e "\n${G}[✔] Linpeas already fetched. " $W;  
else
	wget https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh
fi
if [ -f ~/LinEnum.sh ]; then
	echo -e "\n${G}[✔] LinEnum already fetched. " $W;  
else
	wget https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh
fi

# echo -e "\n${B}[+] Installing Plug (a vim-addon-manager)... " $W;
#   
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#   

# echo -e "\n${B}[+] Installing Grub Customizer... " $W;
# sudo apt install grub-customizer -y  1> /dev/null
  

echo -e "\n${B}[+] Installing Ranger (a terminal-based file browser)... " $W;
sudo apt install ranger -y  1> /dev/null
  

echo -e "\n${B}[+] Installing Neofetch, Figlet, Cmatrix, Hollywood, Lolcat, Cowsay and Global (source code search)... " $W;
sudo apt install neofetch figlet cmatrix global hollywood cowsay cowsay-off -y  1> /dev/null
if [ -f /bin/lolcat ]; then
	echo -e "\n${G}[✔] Lolcat is already installed. " $W;  
else
  pip3 install lolcat;   
fi

# echo -e "\n${B}[+] Installing Lightdm Gtk Greeter... " $W;
# sudo apt install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings  -y  1> /dev/null
  

# echo -e "\n${B}[+] Installing Mate-Applets.. " $W; #\n    And some Education Apps... " $W;
# sudo apt install mate-window-applets-common mate-netbook mate-window-buttons-applet mate-applet-appmenu mate-desktop-environment mate-window-title-applet monajat-applet #education-desktop-mate
  

# echo -e "\n${B}[+] Installing Sddm and some themes... " $W;
# sudo apt install sddm sddm-theme-maya sddm-theme-debian-breeze sddm-theme-breeze
  

# echo -e "\n${B}[+] Installing Dwm, Bspwm (tiling window managers)... " $W;
# sudo apt install dwm bspwm
  

# echo -e "\n${B}[+] Installing KWin and some themes... " $W;
# sudo apt install kwin-x11 kwin-common kwin-data kwin-addons kwayland-integration kwin-style-breeze
  


#if [ -f /bin/ ]; then
#  echo -e "\n${R} [${O}*${R}]${O}  is already installed. " $W;  
#else
#
#fi


echo -e "\n${B}[+] Installing Lynx (terminal based web browser)...
    and MuTT (terminal based email client)" $W;
sudo apt install lynx mutt
  

# echo -e "\n${B}[+] Installing Gimp and some necessary plugins (best free alternative to Photoshop)... " $W;
# sudo apt install gimp gimp-plugin-registry gimp-data-extras gimp-gap gimp-dds gimp-gmic
  

# echo -e "\n${B}[+] Installing Photo-Flare (enhance Pics) and Shotwell (organize photos)... " $W;
# sudo apt install photoflare shotwell
  

# echo -e "\n${B}[+] Installing Darktable (a free alternative to Lightroom)... " $W;
# sudo apt install darktable
  

# echo -e "\n${B}[+] Installing Krita (a nice software for digital painting)... " $W;
# sudo apt install krita krita-gmic
  

# echo -e "\n${B}[+] Installing Inkscape (another software for digital painting)... " $W;
# sudo apt install inkscape inkscape-open-symbols inkscape-speleo inkscape-survex-export inkscape-textext inkscape-textext-doc inkscape-tutorials
  

# echo -e "\n${B}[+] Installing Imagemagic, Luminance-hdr, Fotoxx and Games-content-dev... " $W;
# sudo apt install imagemagick luminance-hdr fotoxx games-content-dev
  

echo -e "\n${B}[+] Installing Kdenlive (an awesome video editor, from KDE)... " $W;
sudo apt install kdenlive && echo -e "\n${G}[✔] Installed."
  

# echo -e "\n${B}[+] Installing Flowblade Openshot Shortcut Lives Pitivi (video editors)... " $W;
# sudo apt install flowblade openshot shortcut lives pitivi
  

echo -e "\n${B}[+] Installing Audacity (an awesome cross-platform audio editor)... " $W;
sudo apt install audacity && echo -e "\n${G}[✔] Installed."
  

# echo -e "\n${B}[+] Installing Lutris (play games on linux)... " $W;
# sudo apt install lutris
  

echo -e "\n${B}[+] Installing VirtualBox... " $W;
sudo apt install virtualbox && echo -e "\n${G}[✔] Installed."
  

 echo -e "\n${B}[+] Cleaning... " $W;
 sudo apt autoclean && sudo apt autoremove
   

echo -e "\n${B}[+] Installing ${C}:" $W;
echo -e "\n{B}[*] Yersinia (Network vulnerabilities check software)..."
echo -e "{B}[*] Uniscan (LFI, RFI, and RCE vulnerability scanner)... " $W;
echo -e "{B}[*] Vuls (Vulnerability scanner for Linux, agentless)... " $W;
echo -e "{B}[*] Wapiti (web application vulnerability scanner)... " $W;
echo -e "{B}[*] Webscarab (Web application review tool)... " $W;
echo -e "{B}[*] Debsecan (Debian Security Analyzer)... " $W;
echo -e "{B}[*] Dotdotpwn (Directory Traversal Fuzzer).... " $W;
echo -e "{B}[*] Changeme (Default credential scanner)... " $W;
echo -e "{B}[*] And Flawfinder (examines source code and looks for security weaknesses)... \n" $W;
 
sudo apt install yersinia uniscan vuls wapiti webscarab debsecan dotdotpwn changeme flawfinder;   

echo -e "\n${B}[+] Installing Telegram-Desktop ${C}..." $W;  
sudo apt install telegram-desktop && echo -e "\n${G}[✔] Installed."

echo -e "\n${R}[${O}~${R}] !!${O} Things To Do Manually ${R}!!" $W;  
echo -e "\n${B}[+] Install ${G}Nessus${B},\n    ${G}Vega ${C}(web vulnerability scanner)${B},\n    ${G}WPS Office ${B}and \n    ${G}JetBrains Toolbox ${C}(PyCharm) ${R}Yourself !!" $W;  
echo -e "${B}[+] Place the ${G}xorg.conf ${B} in (DIR) as ${C}/etc/X11/xorg.conf.d/xorg.conf ${R}!" $W;   
echo -e "${B}[+] And place the ${G}terminator-configs.txt ${B} in (DIR) as ${C}~/.config/terminator/config ${R}!" $W; 
echo -e "\n{B}[~] Time to go${R}!${B} Its all I could do.";   
echo -e "{B}[~] AllahHafiz " $W;
 

# except KeyboardInterrupt:
# 	echo -e "\n${B}[+] Everthing is Done ${O}!${B} Its all I could do.\n{B}[~] AllahHafiz 🤗" $W;
# 	exit
