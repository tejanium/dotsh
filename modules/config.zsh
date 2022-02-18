# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# asdf
source "$HOME/.asdf/asdf.sh"

# ITerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

function zvm_before_init() {
  zvm_bindkey viins '^[[A' history-substring-search-up
  zvm_bindkey viins '^[[B' history-substring-search-down
  zvm_bindkey vicmd '^[[A' history-substring-search-up
  zvm_bindkey vicmd '^[[B' history-substring-search-down
	zvm_bindkey vicmd 'k' history-substring-search-up
  zvm_bindkey vicmd 'j' history-substring-search-down
}
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10

# Completion
autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

# Utils
export EDITOR=vim
export NEXTWORD_DATA_PATH=$HOME/Documents/nextword-data-large
