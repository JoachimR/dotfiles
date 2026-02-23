# alias vim=nvim

alias config="cd ~/.config"

# nvim this file
alias bbb='nvim ~/.bash_profile'

# edit neovim config 
alias nvimconfig='cd ~/.config/nvim/'

# vim notes
alias nnn="nvim ~/Documents/notes.txt"

# switch macos dark and light theme
alias ddd='osascript -l JavaScript -e "Application(\"System Events\").appearancePreferences.darkMode = true"'
alias lll='osascript -l JavaScript -e "Application(\"System Events\").appearancePreferences.darkMode = false"'

# restart macos calendar service
alias ccccc="launchctl stop com.apple.CalendarAgent && launchctl start com.apple.CalendarAgent"

# pnpm related
alias eee="cd ~/workspace/eee/"
alias e1="cd ~/workspace/eee/1/ryter"
alias e2="cd ~/workspace/eee/2/ryter"
alias e3="cd ~/workspace/eee/3/ryter"
# alias qq="cd ~/workspace/ryter && pnpm install && pnpm dev -a=wizard"
# alias qqq="cd ~/workspace/ryter && pnpm install && pnpm dev -a=editor"
# alias qqqq="cd ~/workspace/ryter && pnpm install && pnpm dev -a=wizard,editor"
# alias qqqqe="cd ~/workspace/ryter && pnpm install && pnpm dev -a=wizard,editor -s=engine"
alias enginetest="cd js-packages/engine && pnpm test"

# # adb for android
# export ANDROID_HOME=/Users/$USER/Library/Android/sdk
# export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROIDHOME/platform-tools

# git checkout new branch
PATH=$PATH:$HOME/bin 
cobranch(){ git-create-branch.sh $1 }
alias ggg='cobranch'

# git stash and list all local branches and select one and checkout selected
selectbranch(){ git-select-checkout.sh }
alias iii="selectbranch"

# git amend last commit, adding all local changes
alias aaa="git add . && git commit --amend --no-edit --no-verify && git push -f"

# git: stash all, checkout to main, remove all local branches, pull
alias sss='git stash && git checkout main && git pull && `git branch | grep -v "main" | xargs git branch -D` ; pnpm install'

# git: unstash and add
alias pop='git stash pop && git add . && gst'

# git: rebase current branch onto main
alias rrr='git fetch && git rebase origin/main'

alias cherry='git cherry-pick $1 --no-commit'

# git log
alias gll='git log -n 30 --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)"'
alias ggl='git rev-list --count origin/main..HEAD'

commitAllWithMessage(){ git-commit.sh $1 }
alias ccc='commitAllWithMessage'
alias gitlog="git log -n 20 --graph --decorate --abbrev-commit --format=format:'%C(auto)%h%C(reset) - %C(auto)(%ar)%C(reset) %C(auto)%s%C(reset) %C(auto)%d%C(reset) %C(bold white)- %an%C(reset)' --all"

# delete remote branch
alias deletebranch="git push origin --delete $1"
. "/Users/joachimreiss/.deno/env"


# save clipboard to /Desktop/aaa.bryter
alias ooo="~/bin/save_clipboard.sh"
