export XDG_CONFIG_HOME="$HOME/.config"

# SSH - Disabled for now
# source $HOME/.config/shell/sshEval.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

source $XDG_CONFIG_HOME/shell/brew.sh
source $XDG_CONFIG_HOME/shell/zinit.sh
source $XDG_CONFIG_HOME/shell/nvm.sh
source $XDG_CONFIG_HOME/shell/history.sh
source $XDG_CONFIG_HOME/shell/fzf.sh
source $XDG_CONFIG_HOME/shell/yazi.sh
source $XDG_CONFIG_HOME/shell/completionStyling.sh
source $XDG_CONFIG_HOME/shell/aliases.sh


# ---- Bat ----
export BAT_THEME="tokyonight_night"
export ATAC_THEME="$XDG_CONFIG_HOME/atac/tokyonight.toml"

. "$HOME/.cargo/env" 

eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/oh-my-posh/zen.toml)"

