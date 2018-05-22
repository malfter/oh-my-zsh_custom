# this theme based on:
. ~/.oh-my-zsh/themes/agnoster.zsh-theme

# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘" || symbols+="%{%F{green}%}✓"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"

  [[ -n "$symbols" ]] && prompt_segment black default "$symbols"
}

prompt_time() {
  prompt_segment black default "$(date +%T)"
}

prompt_oh-my-git() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then

    #
    # customize plugin 'oh-my-git'
    #
    display_has_upstream=false
    display_tag=true
    use_color_off=false
    print_unactive_flags_space=false
    display_git_symbol=false
    display_git_current_action=true
    # reset only foreground color (%f), no background color (%k)
    omg_reset="%{%f%b%"


    #
    # customize plugin 'oh-my-git' (override symbols and colors)
    #
    is_a_git_repo_symbol=''
    is_a_git_repo_color='%F{black}'
    has_untracked_files_symbol=''
    has_untracked_files_color='%F{red}'
    has_adds_symbol=''
    has_adds_color="%F{red}"
    has_deletions_symbol=''
    has_deletions_color='%F{red}'
    has_deletions_cached_symbol=''
    has_deletions_cached_color='%F{yellow}'
    has_modifications_symbol=''
    has_modifications_color='%F{red}'
    has_modifications_cached_symbol=''
    has_modifications_cached_color='%F{yellow}'
    ready_to_commit_symbol=''
    ready_to_commit_color='%F{green}'
    is_on_a_tag_symbol=''
    is_on_a_tag_color='%F{black}'
    needs_to_merge_symbol='ᄉ'
    needs_to_merge_color='%F{yellow}'
    has_upstream_symbol='⇅'
    has_upstream_color='%F{black}'
    has_no_upstream_symbol='  '
    has_no_upstream_color='%F{black}'
    detached_symbol=''
    detached_color='%F{red}'
    detached_current_commit_color='%F{black}'
    #can_fast_forward_symbol	»
    can_fast_forward_color='%F{black}'
    has_diverged_symbol=''
    has_diverged_color='%F{red}'
    rebase_tracking_branch_symbol=''
    #rebase_tracking_branch_color=$reset
    rebase_tracking_branch_color='%F{black}'
    merge_tracking_branch_symbol=''
    #merge_tracking_branch_color=$reset
    merge_tracking_branch_color='%F{black}'
    should_push_symbol=''
    should_push_color='%F{black}'
    #has_stashes_symbol	★
    has_stashes_color='%F{white}'
    #commits_behind_symbol	-
    #commits_behind_color=$reset
    commits_behind_color='%F{black}'
    #commits_ahead_symbol	+
    #commits_ahead_color=$reset
    commits_ahead_color='%F{black}'
    branch_color='%F{black}'
    current_branch_color='%F{black}'
    tag_name_color='%F{black}'

    # is 'dirty' change background color
    dirty=$(parse_git_dirty)
    if [[ -n $dirty ]]; then
      prompt_segment yellow black "$(oh_my_git_info)"
    else
      prompt_segment green black "$(oh_my_git_info)"
    fi
  fi
}

build_prompt() {
  NEW_LINE=$'\n'

  RETVAL=$?
  PROMPT='%{%f%b%k%}'
  prompt_status
  prompt_time
  prompt_virtualenv
  prompt_context
  prompt_dir
#  prompt_git
  prompt_oh-my-git
  prompt_bzr
  prompt_hg
  prompt_end
  PROMPT+='${NEW_LINE}> '
}

autoload -U add-zsh-hook
add-zsh-hook precmd build_prompt
