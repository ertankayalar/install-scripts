
#paths 
alias cdm="cd /run/media/ertan/"
alias co='cd $HOME/Code'
alias wi="cd $HOME/Wiki"
alias dot="cd $HOME/.dotfiles"
alias cod="cd $HOME/Code"
alias wik="cd $HOME/Wiki"

# update aliases
alias upal="sh ~/.dotfiles/bash/aliases.sh"


alias gcf='cd $HOME/.config'
alias gdl='cd $HOME/Downloads'
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias uplist='apt list --upgradable'



# editor
alias v='nvim'
alias nv='nvim'
alias lv='lvim'
alias vim="nvim"

#list
#alias ls='ls --color=auto'
#alias la='ls -a'
#alias ll='ls -lah'
#alias l='ls'
#alias l.="ls -A | egrep '^\.'"

# exa 
alias exa='exa --color auto'
alias ls='exa -G --icons'
alias l='ls'
alias la='ls -a'
alias ll='exa --icons -l -a'
alias lg='ll --git'
alias ld='ll -D -1' # dir only
alias ldr='ld -R' # sub dir
alias lt='ll -D -T' # tree dir

alias d='dirs -v'
#for index ({1..9}) alias "$index"="cd +${index}"; unset index

#fix obvious typo's
alias cd..='cd ..'
alias cd.='cd ..'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias pdw='pwd'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

alias bs='micro ~/.bashrc'
alias reload='source ~/.bashrc'

#git                              
alias gc="git clone"
alias gits="git status"
alias gst='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpo="git push origin main"

#tmux          
alias tmuxc="tmux new-session -s"
alias tmuxa="tmux attach-session -t"
alias tmuxk="tmux kill-session -t"
alias tmuxka="tmux kill-server" 


# caps:escape
alias capsesc='setxkbmap -option caps:escape'


# Development

#alias npm='pnpm'
# npm check updates
alias ncupatch="npx npm-check-updates -u -t patch"
alias ncuminor='npx npm-check-updates -u -t minor'
alias ncumajor='npx npm-check-updates -u -f node-fetch'

# alias nr='npm run'
# alias nrd='npm run dev'
# alias nrb='npm run build'
# alias ni='npm i'
# alias pnrd='pnpm dev'
# alias pnb='pnpm build'


alias pnpmup='pnpm add -g @pnpm/exe'

# Rails
alias br='bin/rails'
alias brc='bin/rails console'



# python 

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#free
alias free="free -mt"

#continue download
alias wget="wget -c"


#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"



#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

#backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

#copy shell configs
alias cpbash-default='cp /etc/skel/.bashrc ~/.bashrc && echo "Copied."'
alias cpzsh-default='cp /etc/skel/.zshrc ~/.zshrc && exec zsh'
alias cpfish-default='cp /etc/skel/.config/fish/config.fish ~/.config/fish/config.fish && echo "Copied."'

#hardware info --short
alias hw="hwinfo --short"

#systeminfo
alias probe="sudo -E hw-probe -all -upload"
alias sysfailed="systemctl list-units --failed"

#search content with ripgrep
alias rg="rg --sort path"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#search content with ripgrep
alias rg="rg --sort path"

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"



# docker
alias docstart="sudo systemctl start docker.service"
alias docenable="sudo systemctl enable docker.service"
alias docstop="sudo systemctl stop docker.service"
# todo: docker-compose commands

# python
alias pyliveserver="python3 -m http.server"
alias pyls="python3 -m http.server"

# my custom commands, updcs-i3, updcs-nvim, upcs-all 
#alias updcs-nvim 'md2pdf ~/wiki/cs-nvim.md -o ~/Cloud/Cheatsheets/cs-nvim.pdf'
#alias updcs-i3 'md2pdf ~/wiki/cs-i3.md -o ~/Cloud/Cheatsheets/cs-i3.pdf'
