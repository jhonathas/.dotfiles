# Dotfiles

* [Install](#install)
* [Tmux](#tmux)
  * [General](#general)
  * [Session](#session)
  * [Window](#window)
  * [Pane](#pane)


# Install

```bash
git clone git@github.com:diegonogueira/dotfiles.git ~/.dotfiles
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install mas
brew bundle
```

# Tmux

## General

Description            |      Map         |
-----------------------|------------------|
Leader key             | `<Ctrl> f`       |
Reload ~/.tmux.conf    | `<leader> r`     |
Mouse selection mode   | `Shift Mouse`    |


## Session

Description            |      Map                                |
-----------------------|-----------------------------------------|
Swap session           | `<leader> S`                            |
Kill current session   | `<leader> Q`                            |
Rename current session | `<leader> $`                            |
Create a new session   | `:new -s NAME` or `$ tmux new -s NOME`  |
List all windows       | `:ls` or `$ tmux ls`

## Window

Description                        |      Map              |
-----------------------------------|-----------------------|  
Create a new window (with prompt)  | `<leader> c`          |
Create a new window (process name) | `<leader> C`          |
List all windows                   | `<leader> w`          |
Kill current window                | `<ctrl> d`            |
Go to next window                  | `<leader> n`          |
Go to previous window              | `<leader> p`          |
Alternate to last window           | `<leader> Spc`        |
Rename current window              | `<leader> ,`          |
Change to window                   | `<leader> 0-9`        |
Swap window                        | `:swap-window -t 0-9` |
Find window                        | `<leader> f`          |

## Pane

Description                        |      Map              |
-----------------------------------|-----------------------|  
Split horizontally                 | `<leader> s`          |
Split Vertically                   | `<leader> v`          |
Go to left pane                    | `<leader> h`          |
Go to right pane                   | `<leader> l`          |
Go to top pane                     | `<leader> k`          |
Go to bottom pane                  | `<leader> k`          |
Invert panes                       | `<leader> { or }`     |
Zoom current pane                  | `<leader> z`          |
Kill pane (with confirmation)      | `<leader> x`          |
Kill others panes                  | `<leader> !`          |
Go to next pane                    | `<leader> o`          |
Copy mode                          | `<leader> [`          |
Clear pane                         | `<leader> ;`          |
Command line                       | `<leader> :`          |

  
