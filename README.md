# VimConfig

--------------------------

## Dependencies

  1. [exuberant-ctags](http://ctags.sourceforge.net/)
  2. [ack-grep](http://betterthangrep.com/)
  3. [cmake](http://www.cmake.org/)


## Installation

  1. Install the dependencies
  2. Run the install.sh
  3. Fix ycm's dependency and compile it


### For mac
``` bash
brew install ctags
brew install ack
bash install.sh
# Compile YouCompleteMe
brew install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
# Modify the ~/.vim/ycm_extra_conf.py to add the c/c++ header files' path
# In Mac, the flags variable in it may like this
flags = [
'-Wall',
'-Wextra',
'-Werror',
'-fexceptions',
'-DNDEBUG',
'-std=c++11',
'-x',
'c++',
'-isystem',
'/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include',
'-isystem',
'/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include/c++/4.2.1/',
'-isystem',
'/usr/local/include',
]
```

### For Debian
``` bash
sudo apt-get install ack-grep exuberant-ctags
./install.sh

# Update glibc, debian's glibc is 2.13, but ycm need 2.14 or newer
# Add the following into /etc/apt/sources.list
deb http://mirrors.163.com/debian sid main
# Then update
sudo apt-get update
sudo apt-get -t sid install libc6 libc6-dev libc6-dbg
# Notice that, after updating gclibc, it's better to revert /etc/apt/sources.list

# Compile YouCompleteMe
sudo apt-get install cmake
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

# Modify the ~/.vim/ycm_extra_conf.py to add the c/c++ header files' path
# In debian, the flags variable in it may like this
flags = [
'-Wall',
'-Wextra',
'-Werror',
'-fexceptions',
'-DNDEBUG',
'-std=c++11',
'-x',
'c++',
'-isystem',
'/usr/include',
'-isystem',
'/usr/local/include',
'-isystem',
'/usr/include/c++/4.7.2/',
]
```

## Plugins

  1. [Vundle.vim](https://github.com/gmarik/Vundle.vim) -The plug-in manager for vim
  2. [vim-colorschemes](https://github.com/flazz/vim-colorschemes) -Vim's color schemes
  3. [auto-pairs](https://github.com/jiangmiao/auto-pairs) -Vim plugin, insert or delete brackets, parens, quotes in pair
  4. [GoldenView.Vim](https://github.com/zhaocai/GoldenView.Vim) -Always have a nice view for vim split windows
  5. [nerdtree](https://github.com/scrooloose/nerdtree) -A tree explorer plugin for vim
  6. [tagbar](https://github.com/majutsushi/tagbar) -Vim plugin that displays tags in a window, ordered by class etc
  7. [a.vim](https://github.com/vim-scripts/a.vim) -Alternate Files quickly (.c --> .h etc)
  8. [ctrlp.vim](https://github.com/kien/ctrlp.vim) -Fuzzy file, buffer, mru, tag, etc finder
  9. [ack.vim](https://github.com/mileszs/ack.vim) -Vim plugin for the Perl module / CLI script 'ack'
  10. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) -A code-completion engine for Vim

## References

  1. [https://github.com/amix/vimrc](https://github.com/amix/vimrc)
  2. [https://github.com/adonis0147/vim-config](https://github.com/adonis0147/vim-config)

