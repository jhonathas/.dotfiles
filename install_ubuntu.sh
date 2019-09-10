sudo apt-get update
sudo apt-get upgrade -y

ppa_list=(
  ppa:kgilmer/speed-ricer
  ppa:mmstick76/alacritty
)

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
  # tools
  htop
  git
  git-flow
  alacritty
  feh
  xbacklight
  redshift
  nmap
  poedit
  # i3
  i3
  i3-gaps
  polybar
)

deb_list=(
  https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  https://go.skype.com/skypeforlinux-64.deb
  https://linux.dropbox.com/packages/ubuntu/dropbox_2019.02.14_amd64.deb
)

snap_list=(
  mailspring
  grv
  spotify
  postman
)

sudo add-apt-repository -y ${ppa_list[@]}
sudo apt-get -y install ${apt_list[@]}
sudo snap -y install ${snap_list[@]}

wget -i ${deb_list[@]}
sudo dpkg -R --install dependencies/

rm -rf dependencies

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4

asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add postgres https://github.com/smashedtoatoms/asdf-postgres.git
asdf plugin-add redis https://github.com/smashedtoatoms/asdf-redis.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install erlang
asdf install elixir
asdf install redis
asdf install postgres
asdf install ruby 2.6.4
asdf global ruby 2.6.4

gem install tmuxinator
