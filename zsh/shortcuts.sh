###### Line selection shortcuts
# https://gist.github.com/jamietre/65869c073119bb68f283e635cf6463b1
# https://stackoverflow.com/a/30899296
# More on the topic: https://superuser.com/questions/261587/zsh-shift-selection
r-delregion() {
  if ((REGION_ACTIVE)) then
     zle kill-region # Kill from the cursor to the mark.
  else 
    local widget_name=$1
    shift
    zle $widget_name -- $@
  fi
}

r-deselect() {
  ((REGION_ACTIVE = 0))
  local widget_name=$1
  shift
  zle $widget_name -- $@
}

r-select() {
  ((REGION_ACTIVE)) || zle set-mark-command
  local widget_name=$1
  shift
  zle $widget_name -- $@
}

# The values for "key" don't matter, they serve as reference for zle
for key     kcap   seq        mode     widget (
    sleft   kLFT   $'\e[1;2D' select   backward-char # Move backward one character
    sright  kRIT   $'\e[1;2C' select   forward-char # Move forward one character
    sup     kri    $'\e[1;2A' select   up-line-or-history 
    sdown   kind   $'\e[1;2B' select   down-line-or-history

    left    kcub1  $'\EOD'    deselect backward-char
    right   kcuf1  $'\EOC'    deselect forward-char

    csleft  x      $'\E[1;6D' select   backward-word # Move to the beginning of the previous word
    csright x      $'\E[1;6C' select   forward-word # Move to the beginning of the next word

    cleft   x      $'\E[1;5D' deselect backward-word
    cright  x      $'\E[1;5C' deselect forward-word

    del     kdch1   $'\E[3~'  delregion delete-char
    bs      x       $'^?'     delregion backward-delete-char

  ) {
  # Sets a shell function to use as a widget
  eval "key-$key() {
    r-$mode $widget \$@
  }"
  zle -N key-$key # Add a new widget to zle
  bindkey ${terminfo[$kcap]-$seq} key-$key # Bind keys
}

# Extra shortcuts
bindkey '^q' push-line-or-edit # Stores line in a buffer, and shows it again after you hit enter
bindkey '^x' kill-whole-line # Clears line, why its slow - https://stackoverflow.com/questions/31088455/how-to-correctly-remap-a-key-binding-in-zsh

############## Setup custom shortcuts 

# Open nnn with a shortcut
source ~/dogfiles/zsh/nnn-quitcd.bash_zsh.sh
function run_nnn {
     n < $TTY
     zle reset-prompt
}
zle -N run_nnn
bindkey '^[OQ' run_nnn # Bound to F2

# Get kubernetes context with a shortcut
function get_context {
   echo "\n CONTEXT \n ************ \n $(kubectl config current-context)\n *************"
   zle reset-prompt
}
zle -N get_context
bindkey '^[OP' get_context  # Bound to F1

# Adds sudo in the begging of the zle
function prepend-sudo() {
  if [[ "$BUFFER" != su(do|)\ * ]]; then
    BUFFER="sudo $BUFFER"
    (( CURSOR += 5 ))
  fi
}
zle -N prepend-sudo
bindkey '^[OR' prepend-sudo # Bound to F3

# Get rid of some zle defaul keybindings
bindkey -r "^W"

# Disable some stty ( i.e line discipline) binding because they're picked up by the zle anyway and are also kind of useless
stty stop undef # Disable ctrl-s to freeze terminal.
stty werase undef
stty kill undef
stty start undef
stty lnext undef
stty discard undef
stty quit undef
stty rprnt undef
stty intr ^K # Set interrupt to ctrl+K