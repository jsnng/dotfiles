setopt correct_all
unsetopt BEEP

alias vi=nvim
alias cat=bat
alias ls=eza

export EDITOR=nvim
export SUDO_EDITOR=nvim

precmd() {
  RIGHT="[%j]"
  LEFT=$(print -P "%B%F{032}%~")
  RIGHTWIDTH=$(($COLUMNS - ${#LEFT}))
  RIGHTWIDTH=$((RIGHTWIDTH + 14))
  print -P "$LEFT${(l:$RIGHTWIDTH:)RIGHT}"
}
export PROMPT="%B%(?.%F{010}.%F{009}) ❯%F{250} "
preexec() { print -Pn "%b%f" }
export RPROMPT="%F{240}[%?] %*%f"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
