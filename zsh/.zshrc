# Promt. Available colors are: black, red, green, yellow, blue, magenta, cyan, white
PS1="%B%F{yellow}%~%f %F{white}$%f %b" 

# Configure history
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY # Appends to history after each command, not on shell exit
setopt HIST_IGNORE_ALL_DUPS # Do not store duplications, removes the old command and keeps the new one

# Configure auto complete
zstyle ':completion:*' list-colors '' # Adds colors when listing e.g. with "cd"
zstyle ':completion:*' menu select # Allows to use the arrows when selecting completition options
zstyle ':completion:*' matcher-list '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' # Gives case insensitive completion

autoload -Uz compinit && compinit

# Setup custom shortcuts 
source ~/dogfiles/zsh/shortcuts.sh

# Misc
setopt AUTO_CD # Automatically cd into typed directory. 
zle_highlight+=(paste:none) # Disables text appearing selected when pasted in the zle.

# autoload -Uz predict-on && predict-on

alias cp="cp -iv" \
	  mv="mv -iv" \
	  rm="rm -v" \
	  car="cat" \
	  ca="cat" \
	  mkdir="mkdir -pv" \
	  ls="exa -g --group-directories-first --sort=Extension" \
	  sl="ls" \
	  ll="ls -l" \
	  la="ls -l --all --all" \
	  s="git status -sb" \
	  gl="git log --all --decorate --oneline --graph" \
	  grep="grep --color=auto" \
	  g="git" \
	  f="$FILE" \
	  e="$EDITOR" \
	  t="$TERMINAL" 

	

# source ~/dogfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh # Enable auto suggestions
# source ~/dogfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Enable line syntax higlighting, must be at the end