My Zsh Configuration
=====================

About
-----

This is my zsh configuration.

How to use
----------

First install the oh my zsh:

OSX:

		$ curl -L http://install.ohmyz.sh | sh

LINUX:

		$ sudo apt-get install zsh
		$ wget --no-check-certificate http://install.ohmyz.sh -O - | sh
		$ chsh -s /bin/zsh
		restart

Now, just clone this repository and load the init.sh file. I do it this way:

    $ git clone git@github.com:diegonogueira/zsh_config.git ~/.zsh.d
    $ echo 'source ~/.zsh.d/init.sh' > ~/.zshrc
    $ source ~/.zshrc
