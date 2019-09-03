# Dotfiles

* [Install](#install)
* [Tmux](#tmux)
  * [General](#general)
  * [Session](#session)
  * [Window](#window)
  * [Pane](#pane)
* [Vim](#vim)
  * [General](#general-1)
  * [Project](#project)
  * [Surround](#surround)
  * [Programming](#programming)
  * [Tmux](#tmux)
  * [Easymotion](#easymotion)



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

# Vim

## General
Description                        |      Map                |
-----------------------------------|-------------------------|  
Quit window                        | `<leader> q`            |
Quit all window (force)            | `<leader> Q`            |
Save                               | `<leader> s`            |
Save as                            | `<leader> S`            |
Reload                             | `<leader> E`            |

## Project

Description                        |      Map                |
-----------------------------------|-------------------------|  
Fuzzy search                       | `<leader> f`            |
List buffers                       | `<leader> b`            |
Grep search                        | `<leader> g`            |

## Surround

Description                        |      Map                |
-----------------------------------|-------------------------|  
Surround                           | `(visual) S`            |

## Programming

Description                        |      Map                |
-----------------------------------|-------------------------|  
Swap to test and definition        | `,gt`                   |
Go to definition                   | `,gd`                   |
Run test in buffer                 | `,tb`                   |
Repeate the last test              | `,tr`                   |

## Tmux

Description                        |      Map                |
-----------------------------------|-------------------------|  
Go to tmux test on vi mode         | `<leader> vi`           |
Increase tmux test window          | `<leader> vk`           |
Decrease tmux test window          | `<leader> vj`           |
Toogle tmux test window            | `<leader> vv`           |

## Easymotion

Description                        |      Map                |
-----------------------------------|-------------------------|  
Easymotion by 1 character          | `<leader> a`            |
Easymotion by word                 | `<leader> w`            |
Easymotion by lines top            | `<leader> k`            |
Easymotion by lines bottom         | `<leader> j`            |





