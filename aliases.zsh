# Misc
alias file2clip='f() { xclip -sel clip < $1 };f'
alias upgrade_os='sudo apt update && sudo apt full-upgrade && sudo needrestart'
alias upgrade_dotfiles='PWD_OLD=$(pwd) && echo -n "Upgrade dotfiles: " && cd ~/.homesick/repos/dotfiles && git pull -p && echo -n "Upgrade oh-my-zsh_custom: " && cd ~/.oh-my-zsh_custom && git pull -p && cd $PWD_OLD'
alias hostsconfig="sudo $EDITOR /etc/hosts"
alias mux="tmuxinator"

# Vagrant
alias vg="vagrant"
alias vgu="vagrant up"
alias vgp="vagrant rsync && vg provision"
alias vgd="vagrant destroy -f"

# Ansible
alias aencryptvar="ansible-vault encrypt_string --encrypt-vault-id=default --vault-password-file .vaultpass --name "
alias aencryptfile="ansible-vault encrypt --encrypt-vault-id=default --vault-password-file .vaultpass "
alias aencryptfile2str="ansible-vault encrypt_string \"\$@\" --vault-password-file .vaultpass --stdin-name \"varname\" < "

# Dell
alias dellservicetag="sudo dmidecode | grep \"System Information\" -A4"
alias dellbios="sudo dmidecode | grep \"BIOS Information\" -A3"
