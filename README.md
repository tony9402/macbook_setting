# Macbook setting

### 1. Install brew

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### 2. Install kakaotalk, slack, magnet, memory diag (App store)

### 3. Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### 5. Launchpad icon size 조절

```bash
defaults write com.apple.dock springboard-columns -int [가로]
defaults write com.apple.dock springboard-rows -int [세로]
```

### 6. Install istat, Bixby Studio, VS code, chrome

### 7. Setting VS code

```bash
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```

### 8. node 최신 버전 다운

```bash
curl https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash
source ~/.bash_profile
nvm install stable
```

### 9. Install dot

```bash
git clone https://github.com/tony9402/print-dot-alphabet && cd print-dot-alphabet && bash setup && cd .. && rm -rf print-dot-alphabet
```
