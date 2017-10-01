function fish_right_prompt -d "Write out the right prompt"

  set -g glyph_git_has_staged_changes '±' # Alternatives: ~+±
  set -g glyph_git_has_stashes '≡'
  set -g glyph_git_has_untracked_files '…' # Alternatives: …☡+±
  set -g glyph_git_is_ahead '⭱' # Alternatives: ⭱⭡↑⤽⤼
  set -g glyph_git_is_behind '⭳' # Alternatives: ⭳⭣↓⤽⤼
  set -g glyph_git_is_dirty '*'
  set -g glyph_git_is_diverged '🔀' # Alternatives: ⭿⮁⇅ ⤲⤱⤮⤭ 🔄🔀
  set -g glyph_git_on_branch '🜉' # Alternatives: 🜉⎇
  set -g glyph_git_on_detached '⌀'
  set -g glyph_git_on_tag '⌂'

  set -g ICON_NODE             \UE718   " "     #  from Devicons or ⬢
  set -g ICON_RUBY                  \UE791" "     # \UE791 from Devicons; \UF047; \UE739; 💎

  set -l exit_code $status
  set -l is_git_repository (git rev-parse --is-inside-work-tree ^/dev/null)

  function available -a name -d "Check if a function or program is available."
    #-a NAMES assigns the value of successive command-line arguments to the names given in NAMES
    type "$name" ^/dev/null >&2
  end
  
  function _node_version -d "Get the currently used node version if NVM exists"
    set -l node_version
    available nvm; and set node_version (string trim -l -c=v (node -v 2>/dev/null)) # trimmed lef 'v'; can use 'nvm current', but slower
    test $node_version; and echo -n -s $ICON_NODE $node_version " "
  end

  function _ruby_version -d "Get RVM or rbenv version and output" #^&1 stderr2stdout, >&2 vice versa, '>' stdout, '2>' stderr
    set -l ruby_ver
    if which rvm-prompt >/dev/null ^&1
      set ruby_ver (rvm-prompt i v g)
    else
      if which rbenv >/dev/null ^&1
        set ruby_ver (rbenv version-name)
      end
    end
    if test -n (_rbenv_gemset 2>/dev/null; or echo "")
      test $ruby_ver; and echo -n -s $ICON_RUBY$ruby_ver"@"
    else
      test $ruby_ver; and echo -n -s $ICON_RUBY$ruby_ver " "
    end
  end

  function _rbenv_gemset -d "Get main current gemset name"
    if available rbenv
      if test (rbenv gemset active 2>/dev/null)                           #redirects stderr to /null
        set -l active_gemset (string split -m1 " " (rbenv gemset active))
        echo -n -s $active_gemset[1]
      else
        echo ''
      end
    else
      echo ''
    end
  end

  set NODEp (_node_version)
  set RUBYp (_ruby_version)
  set_color green
  echo -n -s "$NODEp"
  set_color red
  echo -n -s "$RUBYp"
  
  # TODO: Randomly run git fetch in the background?
  # if test -n $is_git_repository -a (random 0 200) -gt 1
  #   git fetch &
  # end

  # Print a red dot for failed commands.
  if test $exit_code -ne 0
    set_color red
    echo -n "• "
    set_color normal
  end

  # Print coloured arrows when git push (up) and / or git pull (down) can be run.
  #
  # Red means the local branch and the upstream branch have diverted.
  # Yellow means there are more than 3 commits to push or pull.
  if test -n "$is_git_repository"
    git rev-parse --abbrev-ref '@{upstream}' >/dev/null ^&1; and set -l has_upstream
    if set -q has_upstream
      set -l commit_counts (git rev-list --left-right --count 'HEAD...@{upstream}' ^/dev/null)

      set -l commits_to_push (echo $commit_counts | cut -f 1 ^/dev/null)
      set -l commits_to_pull (echo $commit_counts | cut -f 2 ^/dev/null)

      if test $commits_to_push != 0
        if test $commits_to_pull -ne 0
          set_color red
        else if test $commits_to_push -gt 3
          set_color yellow
        end

        echo -n "⇡ "
      end

      if test $commits_to_pull != 0
        if test $commits_to_push -ne 0
          set_color red
        else if test $commits_to_pull -gt 3
          set_color yellow
        end

        echo -n "⇣ "
      end

      set_color normal
    end
  end

  # Print the username when the user has been changed.
  if test $USER != $LOGNAME
    echo -n "$USER@"
    set_color normal
  end
 
  # Print the current git branch name or shortened commit hash in colour.
  #
  # Green means the working directory is clean.
  # Yellow means all changed files have been staged.
  # Red means there are changed files that are not yet staged.
  #
  # Untracked files are ignored.
  if test -n "$is_git_repository"
    set_color normal
    echo -n "["

    set -l branch (git symbolic-ref --short HEAD ^/dev/null; or git show-ref --head -s --abbrev | head -n1 ^/dev/null)

    git diff-files --quiet --ignore-submodules ^/dev/null; or set -l has_unstaged_files
    git diff-index --quiet --ignore-submodules --cached HEAD ^/dev/null; or set -l has_staged_files

    if set -q has_unstaged_files
      set_color red
    else if set -q has_staged_files
      set_color yellow
    else
      set_color green
    end

    echo -n $branch

    set_color normal

    echo  "]"

  end
end
