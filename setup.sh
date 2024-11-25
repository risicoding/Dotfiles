#!/bin/bash

echo "Installing packages"

# Ensure nala is available, or fall back to apt-get
if ! command -v nala &> /dev/null; then
  echo "Nala not found, falling back to apt-get"
  sudo apt-get update && sudo apt-get install -y nala
fi

sudo nala install -y zsh git curl wget fzf python3 cmake
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y neovim

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
clear

# Install ngrok
echo "Installing ngrok"
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list \
  && sudo apt update \
  && sudo apt install -y ngrok

clear

echo "Generating ssh keys"
if [ ! -f ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -C "risimn7@gmail.com"
else
  echo "SSH key already exists, skipping generation."
fi

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
read -p "Continue ..." sshcontinue

clear

echo "Cloning oh my zsh"
if [ ! -d ~/.oh-my-zsh ]; then
  curl -s https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
else
  echo "Oh My Zsh is already installed, skipping."
fi

sudo -k chsh -s /usr/bin/zsh $USER
clear

if [ ! -d ~/.dotfiles ]; then
  echo "Cloning dotfiles into ~/.dotfiles"
  git clone https://github.com/risik34/dotfiles ~/.dotfiles
  cp -r ~/.dotfiles/.* ~/
  rm -rf ~/.dotfiles/.git
else
  echo "~/.dotfiles already exists, skipping clone."
fi

clear

# Install nvm
if [ ! -d "$HOME/.nvm" ]; then
  echo "Installing nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm install 22
else
  echo "NVM already installed, skipping."
fi

# Clone tmux plugin manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
  echo "Cloning tmux plugin manager"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
  echo "Tmux plugin manager already exists, skipping."
fi

clear
echo "Setup complete!"

