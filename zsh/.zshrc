source ~/powerlevel10k/powerlevel10k.zsh-theme
export ZSH="$HOME/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -lh"
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias ga="git add"
alias gc="git commit"
alias gb="git branch"
alias gbc="echo \"\"; git branch |cat; echo \"\""
alias gl="git log --all --graph --decorate --oneline"
alias gcb="git checkout -b"
alias gch="git checkout"
alias gcln="git clean -fdx"
alias gss="git stash"
alias gsp="git stash pop"
alias gr="git restore"
alias grs="git restore --staged"
alias gspush="git stash push"
alias mon3="mongosh "mongodb+srv://cluster0.zoi2e.mongodb.net/db1" -u aven -p parola"
alias mondev="mongosh mongodb://mongo-service:27017"
alias aws="ssh -i ~/Documents/Keys/amazon-key.pem ubuntu@52.57.43.135"
alias db="dotnet build"
alias dbr="clear; dotnet build; dotnet run"
alias dbf="dotnet build --force"
alias dr="dotnet run"
alias dw="dotnet watch"
alias drw="dotnet run --project app/api/web --environment local"
alias dre="dotnet run --project app/api/external --environment local"
alias dri="dotnet run --project app/api/internal --environment uat"
alias drm="dotnet run --project app/api/mobile --environment local"
alias dra="dotnet run --project app/api/auth-server --environment local"
alias drad="dotnet run --project app/api/admin-panel --environment local"
alias dc="dotnet clean"
alias dv="dotnet --version"
alias sql="$HOME/.sql"
alias logimongo="mongosh mongodb://root:system42135@mongo-service:27017"
alias logisql="mysql --host=sql-service --port=3401 --user=lp-admin --password=system42135 --database=logipoly_security"
alias logiaccess="logisql --xml < ~/sql/test.sql -v"
alias logisqluat="mysql --host=sql-service --port=3406 --user=lp-admin --password=system42135 --database=logipoly_security"
alias sshaven="ssh -i ~/Documents/Keys/amazon-key-avendvine.pem ec2-user@3.73.161.22"
alias sshcemsu="ssh -i ~/Documents/Keys/cemsu-key.pem cemsu@3.69.187.64"
alias sftpcemsu="sftp -i ~/Documents/Keys/cemsu-key.pem cemsu@3.69.187.64"
alias avensftp="sftp -i ~/Documents/Keys/amazon-key-avendvine.pem ec2-user@3.73.161.22"
alias webdev="ssh cem.subasi@172.25.75.37"
alias pydev="ssh cem.subasi@172.25.75.38"
alias kube="ssh cem.subasi@172.25.75.232"
alias zkube="ssh cem.subasi@172.25.35.224"
alias zzdev="ssh cem.subasi@172.25.35.18"
# alias dotarm="/usr/local/share/dotnet"
# alias dotnet5="/usr/local/share/dotnet/x64/dotnet"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias srcv="source ~/.vimrc"
alias srcz="source ~/.zshrc"

# export PATH="~/Downloads/Visual\ Studio\ Code.app/Contents/Resources/app/bin"

export PATH=/usr/local/share/dotnet:$PATH
# export PATH=/usr/local/share/dotnet/x64:$PATH

export DOTNET_ROOT=/usr/local/share/dotnet;

export FZF_DEFAULT_OPTS='--bind ctrl-j:page-down,ctrl-k:page-up'
eval "$(jump shell)"

[[ ! -f ~/.p10k.zsh  ]] || source ~/.p10k.zsh
if [ -f ~/.bash_profile   ]; then . ~/.bash_profile ; fi
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
