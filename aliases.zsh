# zsh
alias zshconfig="$EDITOR $HOME/.zshrc"
alias zshsource=". $HOME/.zshrc"
alias zshaliases="$EDITOR $HOME/.oh-my-zsh_custom/aliases.zsh"

# Misc
alias file2clip='f() { xclip -sel clip < $1 };f'
alias upgrade_os='sudo apt update && sudo apt full-upgrade'
alias upgrade_dotfiles='PWD_OLD=$(pwd) && echo -n "Upgrade dotfiles: " && cd ~/.homesick/repos/dotfiles && git pull -p && echo -n "Upgrade oh-my-zsh_custom: " && cd ~/.oh-my-zsh_custom && git pull -p && cd $PWD_OLD'
alias hostsconfig="sudo $EDITOR /etc/hosts"
alias mux="tmuxinator"
alias pa="cd ~/git/pm/pm-admin"
alias ad="cd ~/git/gitlab/ansible-desktop"
alias gfind="find -not -iwholename '*.git/*'"
alias sslyze="docker run --rm -it nablac0d3/sslyze"
alias htrace.sh="docker run --rm -it --name htrace.sh htrace.sh"
alias jwtdecode='f() { echo "$1" | jq -R "split(\".\") | .[1] | @base64d | fromjson"; }; f'

alias gitignore="f() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/\$@ ;}; f"

alias gl="find ${HOME}/git -name .git -type d | rev | cut -d'/' -f2- | rev"
alias gcd="cd -- \$(gl | fzf)"

# SSH
alias sshconfig="$EDITOR ~/.ssh/config"
alias sshnokey="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no -o PasswordAuthentication=yes -o IdentitiesOnly=yes "

# Vagrant
alias vg="vagrant"
alias vgu="vagrant up"
alias vgp="vagrant rsync && vg provision"
alias vgd="vagrant destroy -f"

# Ansible
alias aencryptvar="ansible-vault encrypt_string --encrypt-vault-id=default --vault-password-file .vaultpass --name "
alias aencryptfile="ansible-vault encrypt --encrypt-vault-id=default --vault-password-file .vaultpass "
alias aencryptfile2str="ansible-vault encrypt_string \"\$@\" --vault-password-file .vaultpass --stdin-name \"varname\" < "
alias aplay_test="ansible-playbook --user=vagrant --vault-password-file=.vaultpass --inventory=./ansible/env_test "
alias aplay_qa="ansible-playbook --user=vagrant --vault-password-file=.vaultpass --inventory=./ansible/env_qa "
alias aplay_prod="ansible-playbook --user=vagrant --vault-password-file=.vaultpass --inventory=./ansible/env_prod "
alias aplay_prd="ansible-playbook --vault-password-file=.vaultpass --inventory=./ansible/env_prd "

# Dell
alias dellservicetag="sudo dmidecode | grep \"System Information\" -A4"
alias dellbios="sudo dmidecode | grep \"BIOS Information\" -A3"
