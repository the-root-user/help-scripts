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
echo -e "\033[38;5;198m HI ROOT" # General Way "\033[38;5;${id}m HELLO ROOT"

anim=(
      ' 3'
      ' 2'
      ' 1' )

spin(){
A=1
if [ "$A" -le "3" ]
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

echo -e "\n${R}[${O}~${R}]${B} Let's Begin.. ${O}      \n
                                    甆                              ﲎ ﴂ  ﴢ      ﲮ ✔✘      " $G;
sudo apt update
echo -e "\n${R}[${O}+${R}]${B} Installing Vim and some of its required things... " $G;
sudo apt install vim vim-addon-manager vim-syntax-gtk vim-runtime vim-scripts vim-gtk3 vim-asciidoc 1> /dev/null

echo -e "\n${R}[${O}+${R}]${B} Installing Kate (a very awesome and powerful text-editor)... " $G;
if [ -f /bin/kate ]; then
	echo -e "\n${C} ✔ ${O} Kate is already installed. " $G;
else
   sudo apt install kate -y  1> /dev/null 1> /dev/null
echo -e "\n${C} ✔ ${O} Kate has been installed. " $G
fi

echo -e "\n${R}[${O}+${R}]${B} Installing Terminator (a nice terminal emulator)... " $G;
if [ -f /bin/terminator ]; then
	echo -e "\n${C} ✔ ${O} Terminator is already installed. " $G;
else
  sudo apt install terminator -y  1> /dev/null;
fi

echo -e "\n${R}[${O}+${R}]${B} Do you want to install Zsh Plugins? ${C}(y/n): " $G; sleep 0.5
read  REPLY;
        if [[ "$REPLY" =~ ^[y/Y]$ ]];
        then
			echo -e "\n${R}[${O}+${R}]${B} Installing Zsh Plugins... " $G; sleep 0.5
			echo -e "\n${R}[${O}*${R}]${B} First installing oh-my-zsh (plugin manager)... " $G; sleep 0.5
			git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh/; sleep 0.5
			echo -e "\n${R}[${O}*${R}]${B} Now, installing Plugins... " $G;
			git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting;
			git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions;
			git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/plugins/completions; cd ~
 			echo -e "\n${R}[${O}*${R}]${B} Now, installing p10k-zsh... " $G;
            git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/themes/powerlevel10k
			# Worthy steps
			#cp zsh-theme-kiwi-modified ~/.oh-my-zsh/themes/kiwi.zsh-theme
			#cp .p10k.zsh ~/.p10k.zsh
			#cp my-modified.zshrc ~/.zshrc
			echo -e "\n${R}[${O}~${R}]${B} Let's make Zsh your default shell!" $G;
			echo -e "\n${R}[${O}~${R}]${B} Enter /bin/zsh below, if you don't want (or it's already /bin/zsh) then press ENTER to make it stay as it is" $G;
			chsh
			sleep 0.5
		fi

echo -e "\n${R}[${O}+${R}]${B} Fetching Linpeas (Linux PrivEsc script).." $G;
if [ -f ~/linpeas.sh ]; then
	echo -e "\n${C} ✔ ${O} Linpeas already fetched. " $G; sleep 1
else
	wget https://raw.githubusercontent.com/carlospolop/privilege-escalation-awesome-scripts-suite/master/linPEAS/linpeas.sh
fi

echo -e "\n${R}[${O}+${R}]${B} Installing Nautilus (an awesome file browser) and some extensions... " $G;
if [ -f /bin/nautilus ]; then
	echo -e "\n${C} ✔ ${O} Nautilus is already installed. " $G; sleep 1
else
  sudo apt install nautilus nautilus-admin nautilus-data nautilus-extension-burner nautilus-filename-repairer nautilus-font-manager nautilus-gtkhash nautilus-hide nautilus-image-converter nautilus-scripts-manager nautilus-sendto nautilus-share nautilus-wipe -y  1> /dev/null; sleep 0.5
fi

echo -e "\n${R}[${O}+${R}]${B} Installing KTouch (an awesome touch typing trainer, from KDE)... " $G;
echo -e "\n${R}[${O}+${R}]${B} Kturtle, Kdevelop, Kdegraphics and Kdemultimedia " $G;
#if [ -f /bin/ktouch ]; then
#  echo -e "\n${R}<${O}\$${R}>${O} KTouch is already installed. " $G; sleep 1
#else
sudo apt install ktouch kturtle kdevelop kdegraphics kdemultimedia -y  1> /dev/null; sleep 0.5
#fi

echo -e "\n${R}[${O}+${R}]${B} Installing Pompem (Exploit and Vulnerability Finder) and Searchsploit & exploitdb (some must have)... " $G;
sudo apt install pompem exploitdb
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Plank (an awesome dock)... " $G;
if [ -f /bin/plank ]; then
	echo -e "\n${C} ✔ ${O} Plank is already installed. " $G; sleep 1
else
  sudo apt install plank -y  1> /dev/null; sleep 0.5
fi

echo -e "\n${R}[${O}+${R}]${B} Installing HPing3 (an Active Network Smashing Tool)... " $G;
sudo apt install hping3
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Vlc (probably, the best media player)... " $G;
sudo apt install vlc -y  1> /dev/null
sleep 0.5

# echo -e "\n${R}[${O}+${R}]${B} Installing Plug (a vim-addon-manager)... " $G;
# sleep 0.5
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Grub Customizer... " $G;
sudo apt install grub-customizer -y  1> /dev/null
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Ranger (a terminal-based file browser)... " $G;
sudo apt install ranger -y  1> /dev/null
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Neofetch, Toilet, Cmatrix, Hollywood, Lolcat and Global (source code search)... " $G;
sudo apt install neofetch toilet cmatrix global hollywood -y  1> /dev/null
if [ -f /bin/lolcat ]; then
	echo -e "\n${C} ✔ ${O} Lolcat is already installed. " $G; sleep 1
else
  pip3 install lolcat; sleep 0.5
fi

echo -e "\n${R}[${O}+${R}]${B} Installing Lightdm Gtk Greeter... " $G;
sudo apt install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings  -y  1> /dev/null
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Sublime-Text (a very nice code editor)... " $G;
if [ -f /bin/subl ]; then
	echo -e "\n${C} ✔ ${O} Sublime-Text is already installed. " $G; sleep 1
else
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  sudo apt-get install apt-transport-https
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt update -y  1> /dev/null && sudo apt install sublime-text -y  1> /dev/null; sleep 0.5
fi

echo -e "\n${R}[${O}+${R}]${B} Installing Anonsurf-cli... " $G;
sudo apt install anonsurf-cli -y  1> /dev/null
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Brave (a nice web broser)... " $G;
if [ -f /bin/brave-browser ]; then
	echo -e "\n${C} ✔ ${O} Brave is already installed. " $G; sleep 1
else
  sudo apt install apt-transport-https curl gnupg
  curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
  echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sudo apt update -y  1> /dev/null && sudo apt install brave-browser -y  1> /dev/null; sleep 0.5
fi

echo -e "\n${R}[${O}+${R}]${B} Do you want to install Nvidia Drivers now? ${C}(y/n): " $G;
read  REPLY;
        if [[ "$REPLY" =~ ^[y/Y]$ ]];
        then
			echo -e "\n${R}[${O}+${R}]${B} Installing Nvidia Drivers... " $G;
			sleep 1
			echo -e "\n${R}[${O}*${R}]${B} Blacklisting Nouveau Drivers... " $G;
			sudo touch /etc/modprobe.d/blacklist-nvidia-nouveau.conf
			sudo echo "blacklist nouvea" > /etc/modprobe.d/blacklist-nvidia-nouveau.conf
			sudo echo "options nouveau modeset=0" >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf
			echo -e "\n${R}[${O}*${R}]${B} Updating Kernle module... " $G;
			sleep 0.5
			sudo update-initramfs -u
			echo -e "\n${R}[${O}*${R}]${B} Installing Nvidia-legacy-340xx... " $G;
			sleep 0.5
			sudo apt install xserver-xorg-video-nvidia-legacy-340xx
			sleep 0.5
		fi

echo -e "\n${R}[${O}+${R}]${B} Installing Mate-Applets.. " $G; #\n    And some Education Apps... " $G;
sudo apt install mate-window-applets-common mate-netbook mate-window-buttons-applet mate-applet-appmenu mate-desktop-environment mate-window-title-applet monajat-applet #education-desktop-mate
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Sddm and some themes... " $G;
sudo apt install sddm sddm-theme-maya sddm-theme-debian-breeze sddm-theme-breeze
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Dwm, Bspwm (tiling window managers)... " $G;
sudo apt install dwm bspwm
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing KWin and some themes... " $G;
sudo apt install kwin-x11 kwin-common kwin-data kwin-addons kwayland-integration kwin-style-breeze
sleep 0.5


#if [ -f /bin/ ]; then
#  echo -e "\n${R} [${O}*${R}]${O}  is already installed. " $G; sleep 1
#else
#
#fi


echo -e "\n${R}[${O}+${R}]${B} Installing Lynx (terminal based web browser)...
    and MuTT (terminal based email client)" $G;
sudo apt install lynx mutt
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Gimp and some necessary plugins (best free alternative to Photoshop)... " $G;
sudo apt install gimp gimp-plugin-registry gimp-data-extras gimp-gap gimp-dds gimp-gmic
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Photo-Flare (enhance Pics) and Shotwell (organize photos)... " $G;
sudo apt install photoflare shotwell
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Darktable (a free alternative to Lightroom)... " $G;
sudo apt install darktable
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Krita (a nice software for digital painting)... " $G;
sudo apt install krita krita-gmic
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Inkscape (another software for digital painting)... " $G;
sudo apt install inkscape inkscape-open-symbols inkscape-speleo inkscape-survex-export inkscape-textext inkscape-textext-doc inkscape-tutorials
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Imagemagic, Luminance-hdr, Fotoxx and Games-content-dev... " $G;
sudo apt install imagemagick luminance-hdr fotoxx games-content-dev
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Kdenlive (an awesome video editor, from KDE)... " $G;
sudo apt install kdenlive
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Flowblade Openshot Shortcut Lives Pitivi (video editors)... " $G;
sudo apt install flowblade openshot shortcut lives pitivi
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Audacity (an awesome cross-platform audio editor)... " $G;
sudo apt install audacity
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Lutris (play games on linux)... " $G;
sudo apt install lutris
sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing VirtualBox... " $G;
sudo apt install virtualbox
sleep 0.5

 echo -e "\n${R}[${O}+${R}]${B} Cleaning... " $G;
 sudo apt autoclean && sudo apt autoremove
 sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing ${C}:" $G;
echo -e "\n${R}[${O}*${R}]${B} Yersinia (Network vulnerabilities check software)..."
echo -e "${R}[${O}*${R}]${B} Uniscan (LFI, RFI, and RCE vulnerability scanner)... " $G;
echo -e "${R}[${O}*${R}]${B} Vuls (Vulnerability scanner for Linux, agentless)... " $G;
echo -e "${R}[${O}*${R}]${B} Wapiti (web application vulnerability scanner)... " $G;
echo -e "${R}[${O}*${R}]${B} Webscarab (Web application review tool)... " $G;
echo -e "${R}[${O}*${R}]${B} The Hacker Choice's IPv6 Attack Toolkit... " $G;
echo -e "${R}[${O}*${R}]${B} Debsecan (Debian Security Analyzer)... " $G;
echo -e "${R}[${O}*${R}]${B} Dotdotpwn (Directory Traversal Fuzzer).... " $G;
echo -e "${R}[${O}*${R}]${B} Changeme (Default credential scanner)... " $G;
echo -e "${R}[${O}*${R}]${B} And Flawfinder (examines source code and looks for security weaknesses)... \n" $G;
sleep 1
sudo apt install yersinia uniscan vuls wapiti webscarab thc-ipv6 debsecan dotdotpwn changeme flawfinder; sleep 0.5

echo -e "\n${R}[${O}+${R}]${B} Installing Telegram-Desktop ${C}..." $G; sleep 0.2
echo -e "${R}[${O}+${R}]${B} And Signal-Desktop ${C}..." $G;
sudo apt install telegram-desktop telegram-purple signal-desktop; sleep 1

echo -e "\n${R}[${O}~${R}] !!${O} Things To Do Manually ${R}!!" $G; sleep 1
echo -e "\n${R}[${O}+${R}]${B} Install ${G}Nessus${B},\n    ${G}Vega ${C}(web vulnerability scanner)${B},\n    ${G}WPS Office ${B}and \n    ${G}JetBrains Toolbox ${C}(PyCharm) ${R}Yourself !!" $G; sleep 1
echo -e "${R}[${O}+${R}]${B} Place the ${G}xorg.conf ${B} in (DIR) as ${C}/etc/X11/xorg.conf.d/xorg.conf ${R}!" $G; sleep 0.5
echo -e "${R}[${O}+${R}]${B} And place the ${G}terminator-configs.txt ${B} in (DIR) as ${C}~/.config/terminator/config ${R}!" $G; sleep 1.5
echo -e "\n${R}[${O}~${R}]${B} Time to go${R}!${B} Its all I could do."; sleep 0.5
echo -e "${R}[${O}~${R}]${B} AllahHafiz " $G;
sleep 1

# except KeyboardInterrupt:
# 	echo -e "\n${R}[${O}+${R}]${B} Everthing is Done ${O}!${B} Its all I could do.\n${R}[${O}~${R}]${B} AllahHafiz 🤗" $G;
# 	exit
