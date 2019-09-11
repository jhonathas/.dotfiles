echo ""
echo "=============================="
echo "Updating apt"
echo "=============================="
echo ""

sudo apt update

echo ""
echo "=============================="
echo "Upgrading apt"
echo "=============================="
echo ""

sudo apt upgrade -y

echo ""
echo "=============================="
echo "Adding apt repositories"
echo "=============================="
echo ""

ppa_list=(
  ppa:kgilmer/speed-ricer
  ppa:mmstick76/alacritty
)

for p in ${ppa_list[@]}
do
  echo ""
  echo "---- $p ----"
  echo ""
  sudo add-apt-repository -r -y "$p"
  sudo add-apt-repository -y "$p"
done

echo ""
echo "=============================="
echo "Updating apt"
echo "=============================="
echo ""

sudo apt update

echo ""
echo "=============================="
echo "Installig apt packages"
echo "=============================="
echo ""

apt_list=(
  # dependencies
  linux-headers-$(uname -r)
  build-essential
  libreadline-dev
  autoconf
  m4
  libncurses5-dev
  libwxgtk3.0-dev
  libgl1-mesa-dev
  libglu1-mesa-dev
  libpng-dev
  libssh-dev
  unixodbc-dev
  xsltproc
  fop
  dirmngr
  gpg
  # tools
  curl
  stow
  htop
  git
  git-flow
  alacritty
  feh
  xbacklight
  redshift
  nmap
  poedit
  zsh
  # i3
  i3
  i3-gaps
  polybar
  rofi
)

for a in ${apt_list[@]}
do
  echo ""
  echo "---- $a ----"
  echo ""
  sudo apt install -y "$a"
done

echo ""
echo "=============================="
echo "Installing snap packages"
echo "=============================="
echo ""

snap_list=(
  mailspring
  grv
  spotify
  postman
)

snap_classic_list=(
  alacritty
)

for s in ${snap_list[@]}
do
  echo ""
  echo "---- $s ----"
  echo ""
  sudo snap install "$s"
done

for s in ${snap_classic_list[@]}
do
  echo ""
  echo "---- $s ----"
  echo ""
  sudo snap install "$s" --classic
done

echo ""
echo "=============================="
echo "Installing debs packages"
echo "=============================="
echo ""

deb_list=(
  https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  https://go.skype.com/skypeforlinux-64.deb
  #https://linux.dropbox.com/packages/ubuntu/dropbox_2019.02.14_amd64.deb
)

mkdir -p dependencies
cd dependencies

for d in ${deb_list[@]}
do
  echo ""
  echo "---- download $d ----"
  echo ""
  wget "$d"
done

sudo dpkg -i *.deb

cd ..
rm -rf dependencies

echo ""
echo "=============================="
echo "Install adsf tool"
echo "=============================="
echo ""

#git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4

#asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
#asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
#asdf plugin-add postgres https://github.com/smashedtoatoms/asdf-postgres.git
#asdf plugin-add redis https://github.com/smashedtoatoms/asdf-redis.git
#asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
#asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
#bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

#asdf install erlang
#asdf install elixir
#asdf install redis
#asdf install postgres
#asdf install ruby 2.6.4
#asdf install nodejs 10.16.3

#asdf global nodejs 10.16.3
#asdf global ruby 2.6.4

#gem install tmuxinator

echo ""
echo "=============================="
echo "Installing oh my zsh"
echo "=============================="
echo ""

CHSH=no
RUNZSH=no

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo ""
echo "=============================="
echo "Stow"
echo "=============================="
echo ""

stow_to_remove_list=(
  ./config/alacritty
  ./config/i3
)

for s in ${stow_to_remove_list[@]}
do
  echo ""
  echo "---- removing $s ----"
  echo ""
  rm -rf ${s}
done

stow_list=(
  git
  tmux
  tmuxinator
  zsh
  vim
  nvim
  shell
  i3
  polybar
  htop
  redshift
  alacritty-i3
  compton
)

for s in ${stow_list[@]}
do
  echo ""
  echo "---- stowing $s ----"
  echo ""
  stow -v ${s}
done

echo ""
echo "=============================="
echo "Vim and nvim"
echo "=============================="
echo ""

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
nvim +PlugInstall +qall

echo ""
echo "=============================="
echo "Set zsh as default shell"
echo "=============================="
echo ""


chsh -s $(which zsh)
