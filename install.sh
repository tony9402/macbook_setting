#!/bin/bash

echo "Macbook Pro(OS: Catalina)에서 기본적으로 설치합니다."
read -p "계속하시겠습니까?[Y/N] : " start

if [ "$start" == "y" ] || [ "$start" == "Y" ]; then
	echo "설치할 목록"
	echo "Brew, oh-my-zsh, Launchpad size(10x7), nodejs, dot"
	read -p "모든걸 다 설치하시겠습니까?[Y/N] : " start2
	if [ "$start2" == "y" ] || [ "$start2" == "Y" ]; then
		echo "Install Brew"

		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"	
		brew update

		sleep 1
		echo "Install oh-my-zsh"
		
		sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

		sleep 1
		echo "Setting LaunchPad icon size(10x7)"
		
		defaults write com.apple.dock springboard-columns -int 10
		defaults write com.apple.dock springboard-rows -int 7
		killall Dock

		sleep 1
		echo "Install nodejs with nvm"
		
		curl https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash
		source ~/.bash_profile
		nvm install stable
		
		sleep 1
		sh -c "#(curl -fsSl https://raw.githubusercontent.com/tony9402/print-dot-alphabet/master/install.sh)"

		sleep 1
	else
		echo "Install Brew"

		read -p "설치를 하시겠습니까?[Y/N]" download
		if [ "$download" == "y" ] || [ "$download" == "Y" ]; then
        	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
        	brew update
	
        	sleep 1
		fi

        echo "Install oh-my-zsh"
    
		read -p "설치를 하시겠습니까?[Y/N]" download
		if [ "$download" == "y" ] || [ "$download" == "Y" ]; then

			sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

			sleep 1
		fi

		echo "Setting LaunchPad icon size(10x7)"

		read -p "설치를 하시겠습니까?[Y/N]" download
		if [ "$download" == "y" ] || [ "$download" == "Y" ]; then   

			defaults write com.apple.dock springboard-columns -int 10
			defaults write com.apple.dock springboard-rows -int 7
			killall Dock

			sleep 1
		fi

		echo "Install nodejs with nvm"

		read -p "설치를 하시겠습니까?[Y/N]" download
		if [ "$download" == "y" ] || [ "$download" == "Y" ]; then

			curl https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash
			source ~/.bash_profile
			nvm install stable

			sleep 1
		fi

		echo "Install dot"

		read -p "설치를 하시겠습니까?[Y/N]" download
		if [ "$download" == "y" ] || [ "$download" == "Y" ]; then
			sh -c "#(curl -fsSl https://raw.githubusercontent.com/tony9402/print-dot-alphabet/master/install.sh)"
			sleep 1
		fi
	fi
fi
