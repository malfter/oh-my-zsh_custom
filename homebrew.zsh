[ -f "/home/linuxbrew/.linuxbrew/bin/brew" ] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# homebrew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
