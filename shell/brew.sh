
if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
# ---- Bat ----
export BAT_THEME="TwoDark"

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

eval "$(rbenv init - zsh)"
