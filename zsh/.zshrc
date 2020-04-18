# Setup prompt:

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

PS1="%B%F{green}%~%f %F{white}$%f %b"


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


# Misc config
stty stop undef	# Disable ctrl-s to freeze terminal.
setopt AUTO_CD # Automatically cd into typed directory.
