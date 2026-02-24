export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"


plugins=(git aws)

source $ZSH/oh-my-zsh.sh

# Show path from workspace/ when inside a workspace directory
prompt_dir() {
  if [[ "$PWD" == *"/workspace/"* ]]; then
    echo "${PWD##*/workspace/}"
  elif [[ "$PWD" == *"/workspace" ]]; then
    echo "workspace"
  else
    echo "%c"
  fi
}
PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}\$(prompt_dir)%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

#if [ -f ~/.bash_profile ]; then 
#    . ~/.bash_profile;
#fi

. ~/.bash_profile;

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/.local/bin":$PATH

. "/Users/joachimreiss/.deno/env"
# pnpm
export PNPM_HOME="/Users/joachimreiss/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Dotfiles bare repo alias
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
