# Full (hopefully) dev config

![image](https://github.com/Maimunar/dev-env/assets/62520195/3cff3f57-4d52-40d8-a9ef-5e7c4334fc51)

## Requirements:

- Setup is for a Mac device only - I am currently working on an M1 Macbook Pro.

## Setup

This section gives a step-by-step process of setting up my dev environment

1. System Settings

- Caps Lock to CTRL
- Hide dock + menu bar
- Keyboard key repeat fastest, key delay until repeast shortest
- Keyboard change input sources to ctrl+option+space

2. Browser

- Install Zen
- Cmd-shift-e for compact mode
- Import bookmarks if needed
- Setup needed spaces
- Setup default search engine - `https://unduck-maimunars-projects.vercel.app/`
- Plugins - Vimium, uBlock Origin, Password manager, Privacy Badger, (optional) React Developer tools
- Theme - tokyonight

3. RayCast

- `https://www.raycast.com/`
- Open with cmd + space (remove mac spotlight)
- Setup vim keybinds, dark mode
- Store modules I use - Obsidian, Spotify, (optional) Trello
- In Keyboard Shortcuts on mac set up cycle between apps to not use cmd-` but rather opt-n (mneumonic - next)
- Window management shortcuts + notes and todo list (possibly from store) shortcuts
- I have some scripts in the repo under `scripts/` i use with raycast like the obsidian daily note

- Make sure to export your raycast info when changing a computer. I have not included it here due to privacy reasons

4. Homebrew - `https://brew.sh/`

5. Terminal

- wezterm (current) or ghostty
- use terminal configuration from the repo + font
- setup zsh:
  - p10k (oh-my-zsh): `https://github.com/romkatv/powerlevel10k`
  - alternatively, you can use zinit for a lighter config
  - .zshrc - check repo for many features like autosuggestions, autocomplete...
  - setup ssh profiles/passwords
- setup nvm - https://github.com/nvm-sh/nvm

6. Software - some of these can be installed with homebrew, which should be the preferred way - double check their installation

- AltTab - https://alt-tab-macos.netlify.app/
  - Make it work with cmd+tab
  - Blacklist all apps with a raycast shortcut
- AlDente - https://apphousekitchen.com/
- BeardedSpice - I use this to control Spotify with media keys instead of it opening iTunes (annoyingly) - https://beardedspice.github.io/
- Obsidian -
- sioyek - PDF reader
- Discord
- Docker
- Vial - for my custom keyboard. Vial files are in the repo for importing
- More brew software - check the file `leaves.txt` or install all with `xargs brew install < leaves.txt` (not recommended)
- More brew casks - `cask.txt`
- Honorable mentions of brew software - atac (alternative to postman), btop (htop alternative), bat (better cat), yazi (file explorer, config can be improved)
- Fonts - I use Fira Code and MesloLGS Nerd Font Mono

7. Obsidian - note-taking

- `https://obsidian.md/`
- Tokyo Night theme, vim keybidnings
- Plugins: Advanced URI, Git (for backup), Excalidraw, Omnisearch, Homepage

8. Code tools

- tmux - use tpm + the config from the repo
- Tmux Package Manager - `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- neovim - config available in repo

9. Spotify

- I use spicetify - https://spicetify.app/
- Tokyo night theme, browse marketplace for good plugins, but I recommend genres and vim plugin as well as fullscreen

## Alternatives

These are things I used to use that I have now deleted from my main configuration, however are still things someone could find use in and most configuration stays in this repo.

1. Firefox - if you dont like zen, you can use firefox with a custom user.js - https://github.com/yokoffing/Betterfox
2. iTerm - https://iterm2.com/ - I used to use iTerm2, but lately I moved to Wezterm in effort of moving towards an os-agnostic setup. I also did not utilize much of the extra features of iTerm2.
3. I used to use aerospace, but I have moved to raycast for simplicity and velocity - I use its window management features and I use app hotkeys to switch between apps. Before aerospace, I used yabai + skhd, but if you are interested in a tiling window manager, aerospace is much better, since it doesnt need extra permissions and is slightly faster. All the configurations I used to use are available in the repo
4. Gitui - I started using lazygit instead of it, config is still available
5. Sketchybar - I used to use it to showcase my spaces and time, but I dropped it to save screen real estate. Instead I use a better tmux line + mneumonics for the needed spaces (opt+ T = terminal, etc, check `aerospace/aerospace.toml`)
   - If you are using sketchybar and aerospace/yabai, you need to add a padding on top of the page in yabai/aerospace

## Future Plans:

- I use obsidian for note-taking, but still havent done a proper setup for nvim complementing it
- I am looking into setting up a better way to manage my dotfiles - I am considering stow and will probably be implementing this soon
- I have started playing with an archlinux setup in my offtime, so more and more effort is put into making my setup os-agnostic
