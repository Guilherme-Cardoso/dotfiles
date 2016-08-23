fancy_echo "installing shell tools..."

brew cask install iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install tmux
brew install zsh-syntax-highlighting
append_to_shell_config_files 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' 1
brew install fzf
if [ ! -e $HOME/.fzf.zsh ]; then
    /usr/local/opt/fzf/install
fi
brew install zsh-history-substring-search
append_to_shell_config_files 'source /usr/local/opt/zsh-history-substring-search/zsh-history-substring-search.zsh'
append_to_shell_config_files '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh'
brew install findutils
brew install the_silver_searcher
brew install source-highlight 
brew install diff-so-fancy
