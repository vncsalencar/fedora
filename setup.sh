sudo dnf distro-sync -y
sudo dnf groupinstall 'C Development Tools and Libraries'  'Development Tools' 'Development Libraries' -y # development tools

sudo dnf install libglvnd # for nvidia driver
sudo dnf install openssl # for postman
sudo dnf install sqlite # for dnf search
sudo dnf install bat lsd ripgrep fd-find fzf zoxide git
sudo dnf install zsh util-linux-user # zsh + chsh for running oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # oh-my-zsh
source ~/.zshrc

curl https://get.volta.sh | bash # volta.sh
volta install node
volta install npm
volta install pnpm
pnpm setup

source ~/.bashrc
source ~/.zshrc

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh # rustup + rustc + cargo
pnpm install --global typescript typescript-language-server prettier # for typescript/javascript development with helix
rustup component add rust-src
rustup component add rust-analyzer

sudo dnf copr enable varlad/helix
sudo dnf install helix

sudo dnf install kitty
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
ln -s ~/.config/kitty/kitty-themes/themes/Afterglow.conf ~/.config/kitty/theme.conf

mkdir -p ~/.config/kitty && cp ./kitty/kitty.conf ~/.config/kitty
mkdir -p ~/.config/helix && cp ./helix/config.toml ~/.config/helix && cp ./helix/languages.toml ~/.config/helix
mkdir -p /usr/share/helix/runtime/themes && cp ./helix/catppuccin_mocha.toml /usr/share/helix/runtime/themes
