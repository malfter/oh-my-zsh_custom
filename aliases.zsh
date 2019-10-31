# Misc
alias file2clip='f() { xclip -sel clip < $1 };f'
alias osupgrade='sudo apt update && sudo apt full-upgrade'
alias hostsconfig="sudo $EDITOR /etc/hosts"

# Vagrant
alias vg="vagrant"

# Ansible
alias aencryptvar="ansible-vault encrypt_string --encrypt-vault-id=default --vault-password-file .vaultpass --name "
alias aencryptfile="ansible-vault encrypt --encrypt-vault-id=default --vault-password-file .vaultpass "
alias aencryptfile2str="ansible-vault encrypt_string \"$@\" --vault-password-file .vaultpass --stdin-name \"varname\" < "
