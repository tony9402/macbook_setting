#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/tony9402/macbook_setting/master/youtubedownload.bash | pbcopy
pbpaste > ~/Desktop/.youtube-download.bash
chmod +x ~/Desktop/.youtube-download.bash
echo 'alias ydd="bash ~/Desktop/.youtube-download.bash"' >> ~/.bash_profile
source ~/.bash_profile
echo " " | pbcopy
