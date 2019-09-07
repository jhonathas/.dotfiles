sudo apt-get install git git-flow

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb

sudo snap install mailspring

sudo snap install grv

sudo apt install feh

sudo apt install xbacklight

# editar o /etc/pulse/default.ap

# i3
sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update
sudo apt-get install i3

# i3-gaps
sudo apt-get install i3-gaps

# polybar
sudo apt-get install polybar
sudo apt-get install rxvt-unicode xsel

# alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt-get install alacritty

# redshift
sudo apt-get install redshift

sudo apt-get -y install linux-headers-$(uname -r) build-essential libreadline-dev autoconf m4 libncurses5-dev libwxgtk3.0-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add postgres https://github.com/smashedtoatoms/asdf-postgres.git
asdf plugin-add redis https://github.com/smashedtoatoms/asdf-redis.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install ruby 2.6.4
asdf global ruby 2.6.4
gem install tmuxinator
