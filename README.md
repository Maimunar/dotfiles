# Full (hopefully) dev config

![image](https://github.com/Maimunar/dev-env/assets/62520195/3cff3f57-4d52-40d8-a9ef-5e7c4334fc51)

## Requirements:

- Setup is for a Mac device only - I am currently working on an M1 Macbook Pro.

## Software:

I used to use iTerm2, but lately I moved to Wezterm in effort of moving towards an os-agnostic setup. I also did not utilize much of the extra features of iTerm2.

- iTerm - https://iterm2.com/
- RayCast - https://www.raycast.com/
- AltTab - https://alt-tab-macos.netlify.app/
- AlDente - https://apphousekitchen.com/
- BeardedSpice - I use this to control Spotify with media keys instead of it opening iTunes (annoyingly) - https://beardedspice.github.io/
- Obsidian - https://obsidian.md/
- Brew
- sioyek - PDF reader

## Other needed sofware:

- You can install them with `xargs brew install < leaves.txt` but you probably want to filter that list first
- You can do the same with `brew/cask.txt` for casks
- There is some redundancy in my brew list, which I will eventually clean up
- Tmux Package Manager - `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- setup nvm - https://github.com/nvm-sh/nvm
- aerospace

## RayCast:

- Setup vim keybinds, dark mode
- Store modules I use - Obsidian, Spotify, Toothpick

## Mac options:

- Caps Lock to CTRL
- Hide dock + menu bar
- Keyboard key repeat fastest, key delay until repeast shortest
- Keyboard change input sources to ctrl+option+space

## Firefox options:

- I use a custom user.js - https://github.com/yokoffing/Betterfox
- I use the Tokyo Night theme
- some of my plugins - Vimium, uBlock Origin, Password manager

## Software options:

- RayCast - open with cmd + space (remove default mac spotlight)
- AltTab - open with cmd + tab (remove default mac tab windows)
- iTerm - setup ssh profiles/passwords
- iTerm - Font DroidSansMono Nerd Font

## Zsh options:

- Powerlevel10k - https://github.com/romkatv/powerlevel10k
- Maybe moving to zinit soon
- autosuggestions, autocomplete (in .zshrc)

## Tmux options:

- After setting up tpm, should work with the config

## Nvim options:

- If any quirks are found, they will be added here
- Just use the normal config

## Spotify options:

- I use spicetify - https://spicetify.app/
- Tokyo night theme, browse marketplace for good plugins, but i recommend genres and vim plugin as well as fullscreen

## Obsidian options:

- I use the Tokyo Night theme
- Some of the plugins i use: Advanced URI, Git (for backup), Excalidraw, Omnisearch, Homepage

## Other software options:

- Gitui, Yazi, btop, fzf, sioyek are all set up with tokyonight themes, config is available
- When applicable, some keybinds are added
- If any quirks are found, they will be added here
- I am adding custom scripts for raycast, they are in the scripts directory

## Notes:

- There is a setup for yabai + skhd, but I have replaced it with aerospace since aerospace doesnt need any extra permissions and is faster
- There is a sketchybar setup, but I have dropped it in favor of a better tmux line + mneumonics for the needed spaces in aerospace (opt + T for terminal, etc., check aerospace/aerospace.toml)
  - If you want to use sketchybar, you will need to add a padding on the top of the page. This can be done from the aerospace config file

## Future Plans:

- I will be dropping gitui in favor of lazygit, since gitui has some issues with pushing with ssh
- The neovim config is always changing, I don't see that stopping anytime soon
- I use obsidian for note-taking, but still havent done a proper setup for nvim complementing it
- I am looking into setting up a better way to manage my dotfiles - I am considering stow, but need to spend the time configuring it
- I have started playing with an archlinux setup in my offtime, so more and more effort is put into making my setup os-agnostic
