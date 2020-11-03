# Misc
alias file2clip='f() { xclip -sel clip < $1 };f'
alias upgrade_os='sudo apt update && sudo apt full-upgrade'
alias upgrade_dotfiles='PWD_OLD=$(pwd) && echo -n "Upgrade dotfiles: " && cd ~/.homesick/repos/dotfiles && git pull -p && echo -n "Upgrade oh-my-zsh_custom: " && cd ~/.oh-my-zsh_custom && git pull -p && cd $PWD_OLD'
alias hostsconfig="sudo $EDITOR /etc/hosts"
alias mux="tmuxinator"
alias ta="cd ~/git/int/telegra-admin"
alias ta2="cd ~/git/int/telegra-admin2"
alias ad="cd ~/git/gitlab/ansible-desktop"
alias gfind="find -not -iwholename '*.git/*'"
alias sslyze="docker run --rm -it nablac0d3/sslyze"

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
alias aplay_vag="ansible-playbook --user=ansible --vault-password-file=.vaultpass --inventory=./ansible/env_vag "
alias aplay_tst="ansible-playbook --user=ansible --vault-password-file=.vaultpass --inventory=./ansible/env_tst "
alias aplay_stg="ansible-playbook --user=ansible --vault-password-file=.vaultpass --inventory=./ansible/env_stg "
alias aplay_prd="ansible-playbook --user=ansible --vault-password-file=.vaultpass --inventory=./ansible/env_prd "

# Dell
alias dellservicetag="sudo dmidecode | grep \"System Information\" -A4"
alias dellbios="sudo dmidecode | grep \"BIOS Information\" -A3"
