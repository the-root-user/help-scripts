#!/usr/bin/bash

#color variables
Black='\033[30m'
R='\033[31m'
G='\033[32m'
O='\033[33m'
B='\033[34m'
M='\033[35m'
C='\033[36m'
W='\033[37m'

echo -e $R'['$O'~'$R']'$B' Greetings'$O' Root-user'$R'!';

#If using termux
echo -e "\n${R}[${O}+${R}]${B} Are you using Termux? ${G} (y/n):" $G;
read REPLOY;
        if [[ "$REPLOY" =~ ^[y/Y]$ ]];
        then
             # Termux customizations
             echo -e $R'['$O'+'$R']'$B' Do you want to install Termux Styles?'$G' (y/n): '$G;
             read  REPLY;
                 if [[ "$REPLY" =~ ^[y/Y]$ ]];
                 then
                      echo -e '\n'$R'['$O'*'$R']'$B' Installing Termux-styles...'$G;
                      apt install git -y;
                      git clone https://github.com/adi1090x/termux-style;
                      git clone https://github.com/adi1090x/termux-omz;
                      chmod +x termux-omz/install;
                      bash termux-omz/install -y;
                 fi
             # Install Kali in Termux
             echo -e '\n'$R'['$O'+'$R']'$B' Do you want to install Kali in Termux?'$G' (y/n): '$G;
             read  REPLY;
                 if [[ "$REPLY" =~ ^[y/Y]$ ]];
                 then
                      echo -e $R'['$O'*'$R']'$B' Installing proot (for Fake-root environment)...'$G;
                      apt install proot -y;
                      echo -e '\n'$R'['$O'*'$R']'$B' Installing Kali in your Termux...'$G;
                      echo -e $R'['$O'~'$R']'$B' Its gonna take some time, so, be patient!'$G;
                      apt install wget -y;
                      wget https://raw.githubusercontent.com/MasterDevX/KaliTermux/master/InstallKali.sh && bash InstallKali.sh;
                fi
        fi

# Zsh Customizations
echo -e '\n'$R'['$O'+'$R']'$B' Do you want to install Zsh Plugins?'$G' (y/n): '$G;
read  REPLY;
        if [[ "$REPLY" =~ ^[y/Y]$ ]];
        then
             echo -e $R'['$O'*'$R']'$B' Installing oh-my-zsh (plugin manger for zsh)...'$G;
             git clone https://github.com/ohmyzsh/ohmyzsh ~/.oh-my-zsh/;
             cd ~/.oh-my-zsh/plugins/;
             echo -e '\n'$R'['$O'*'$R']'$B' Installing Zsh-plugins...'$G;
             git clone https://github.com/zsh-users/zsh-syntax-highlighting;
             git clone https://github.com/zsh-users/zsh-autosuggestions;
             git clone https://github.com/zsh-users/zsh-completions;
#        else
#             echo -e $G'Cancelling Installation.. As you wish !!'$G;
        fi

echo -e '\n'$R'['$O'~'$R']'$B' Everthing is Done'$R'!'$B' Its all I could do.\n'$R'['$O'~'$R']'$B' AllahHafiz 🤗';echo;
