# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="przemek"
#for textmate
export LC_CTYPE=en_US.UTF-8
#export PROMPT="%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%}"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git textmate ruby bundler brew command-no-found compleat gem osx pow rails3 rvm)

source $ZSH/oh-my-zsh.sh

export PATH=/Users/przemek/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Library/PostgreSQL/9.0/bin:/Users/przemek/.bin:/usr/local/ActivePerl-5.12/bin
#export PATH=/Users/przemek/.rvm/gems/ruby-1.9.2-p180/bin:/Users/przemek/.rvm/gems/ruby-1.9.2-p180@global/bin:/Users/przemek/.rvm/rubies/ruby-1.9.2-p180/bin:/Users/przemek/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Library/PostgreSQL/9.0/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

ECHO PATH=$PATH > .profile

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#to make ruby mail library work without any nasty segfaults :)
export RUBYOPT="-ropenssl"



alias ls="ls -Gp" 
#export TERM=linux
#alias svim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim -g --servername VIM --remote-tab'

alias vim="subl"

#so we can use mvim as a system's editor
export EDITOR='subl -w'
#EDITOR=vim;
#export EDITOR

alias q="exit"
alias :q="exit"
alias vimrc="vim ~/.vim/vimrc"
alias zshrc="vim ~/.zshrc"
alias ackrc="vim ~/.ackrc"
alias irbrc="vim ~/.irbrc"
#alias rm="rm -i"
#alias mv="mv -i"

. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
 z --add "$(pwd -P)"
}

