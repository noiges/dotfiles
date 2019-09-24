# dotfiles
Just my dotfiles.

## Usage
### Install brew dependencies
```sh
./script/brew
```

### Copy dotfiles
```sh
cp -Riv files/ ~
```

### Set Mac OS X defaults
```sh
./script/osx
```

### Install vim plugins
:PlugInstall

### Install OneDark terminal theme
1. Import ~/.vim/plugged/onedark.vim/term/One\ Dark.terminal into Terminal.app
2. Make background of Theme match OneDark's background in Vim

### Fish
`echo /usr/local/bin/fish | sudo tee -a /etc/shells`
`chsh -s /usr/local/bin/fish`
