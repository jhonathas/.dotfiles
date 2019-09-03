sudo apt-get install git

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

# st terminal
sudo apt-get install libx11-dev libxft-dev libxext-dev
cd ~/.config
wget https://dl.suckless.org/st/st-0.8.2.tar.gz
tar -xf st-0.8.2.tar.gz
mv st-0.8.2.tar.gz st
cp -R cp st-backup
sudo make clean install
wget https://st.suckless.org/patches/solarized/st-no_bold_colors-0.5.diff
wget https://st.suckless.org/patches/solarized/st-no_bold_colors-0.6.diff
wget https://st.suckless.org/patches/solarized/st-solarized-light-0.7.diff
wget https://st.suckless.org/patches/solarized/st-no_bold_colors-0.8.1.diff
wget https://st.suckless.org/patches/solarized/st-no_bold_colors-20170623-b331da5.diff


