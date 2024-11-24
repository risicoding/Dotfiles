 echo "Installing packages"

sudo nala install zsh git curl wget fzf python3 cmake 
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
curl -fsSL https://get.pnpm.io/install.sh | sh -
clear

	echo "Generating ssh keys"
	ssh-keygen -t ed25519 -C "risimn7@gmail.com"
	eval "$(ssh-agent -s)"
	ssh-add ~/.ssh/id_ed25519
	cat ~/.ssh/id_ed25519.pub
	read -p "Continue ..." sshcontinue

clear 
	echo "Cloning oh my zsh"
	curl -s  https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash 
	sudo -k chsh -s /usr/bin/zsh $USER
clear

if [ ! -d ~/.dotfiles ]; then
	echo "Cloning dotfiles into ~/.dotfiles"
	git clone https://github.com/risik34/dotfiles ~/.dotfiles
	cp .dotfiles/.* ./ -r 
	rm -rf .git
fi

clear

  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  nvm install 22

  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

clear
