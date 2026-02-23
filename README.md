# Dotfiles

Managed with a bare git repo. Config files live directly in `$HOME` — no symlinks needed.

## What's tracked

- `.zshrc`, `.zprofile` — Zsh config
- `.bashrc`, `.bash_profile` — Bash config
- `.tmux.conf` — tmux config
- `.wezterm.lua` — WezTerm config
- `.gitconfig`, `.config/git/ignore` — Git config
- `.vimrc`, `.ideavimrc` — Vim / IdeaVim config
- `.claude/CLAUDE.md`, `.claude/settings.json` — Claude Code config
- `bin/` — Shell scripts used by bash_profile aliases
- `.local/bin/dotfiles-sync` — Daily auto-sync script
- `Library/LaunchAgents/com.joachimreiss.dotfiles-sync.plist` — launchd schedule

## Restore on a new machine

```bash
git clone --bare git@github.com:YOUR_USERNAME/dotfiles.git $HOME/.dotfiles

# Define the alias for this session
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Checkout files into $HOME
dotfiles checkout

# If checkout fails due to existing files, back them up first:
# mkdir -p ~/.dotfiles-backup
# dotfiles checkout 2>&1 | grep "^\t" | awk '{print $1}' | xargs -I{} mv {} ~/.dotfiles-backup/{}
# dotfiles checkout

# Hide untracked files from status
dotfiles config --local status.showUntrackedFiles no
```

## Set up daily auto-sync

```bash
# Make sure the sync script is executable
chmod +x ~/.local/bin/dotfiles-sync

# Load the launchd agent
launchctl load ~/Library/LaunchAgents/com.joachimreiss.dotfiles-sync.plist
```

The agent runs daily at noon. If your Mac is asleep, it catches up on wake.

Logs: `~/.local/share/dotfiles-sync.log`

## Day-to-day usage

```bash
dotfiles status                # see what changed
dotfiles add ~/.some_file      # track a new file
dotfiles commit -m "message"   # commit changes
dotfiles push                  # push to GitHub
```

The daily auto-sync only commits changes to already-tracked files. New files must be added manually with `dotfiles add` once.
