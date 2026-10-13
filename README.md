# Macbook setting

<!-- repository-guide:start -->
## 저장소 안내

MacBook 개발 환경 설정을 위한 개인 기록과 셸 스크립트입니다. `install.sh`는 macOS Catalina 당시 구성에 맞춰 작성되어 있습니다.

| 경로 | 내용 |
| --- | --- |
| [install.sh](install.sh) | 당시 개발 환경 설치 자동화 스크립트 |
| [setup.bash](setup.bash) | 다운로드 도구 배치와 Bash alias 설정 |
| [youtubedownload.bash](youtubedownload.bash) | 영상 다운로드 보조 스크립트 |

아래 Homebrew와 Oh My Zsh 설치 주소는 [Homebrew 공식 설치 문서](https://docs.brew.sh/Installation)와 [Oh My Zsh 공식 문서](https://github.com/ohmyzsh/ohmyzsh#basic-installation)를 기준으로 갱신했습니다. 자동화 스크립트 자체는 당시 구현을 유지하고 있으므로 README의 설치 명령과 스크립트 내용을 구분해서 확인하세요.

목적과 구현 범위, 구성 분석은 [Explain.md](Explain.md)를 참고하세요.

<!-- repository-guide:end -->

### 1. Install brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install kakaotalk, slack, magnet, memory diag (App store)

### 3. Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
