# copytoggle.vim

Vim's pastetoggle for copying

## Overview

copytoggle.vim allows you to disable esthetical characters like line numbers
with a single keypress for painless copy-pasting:

    nmap <F3> <Plug>copytoggle

Currently the following features are supported:

* listchars
* linebreak
* showbreak
* line numbers
* conceal

![copytoggle.vim demo](https://misc.timakro.de/vim-copytoggle.png)

## Requirements

* Vim 7.0+

## Installation

It is recommended to install this plugin using a plugin manager like
[pathogen.vim](http://github.com/tpope/vim-pathogen),
[Vundle.vim](https://github.com/VundleVim/Vundle.vim) or
[vim-plug](https://github.com/junegunn/vim-plug).

Alternatively you can just drop the `plugin` and `doc` folders into your
`~/.vim` directory. Don't forget to run `:helptags ~/.vim/doc` to generate the
help tags after a manual installation.

## License

Copyright (C) 2018 Tim Schumacher

License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.

This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent per‐mitted by law.
