function fish_right_prompt -d "Write out the right prompt"


  set -g ICON_NODE             \UE718   " "     # îœ˜ from Devicons or â¬¢

  set -l exit_code $status


  function available -a name -d "Check if a function or program is available."
    #-a NAMES assigns the value of successive command-line arguments to the names given in NAMES
    type -q $name
  end

  # node version
  function _node_version -d "Get the currently used node version if fnm exists"
    set -l node_version
    available fnm; and set node_version (string trim -l -c=v (node -v 2>/dev/null)) # trimmed lef 'v'; can use 'nvm current', but slower
    test $node_version; and echo -n -s $ICON_NODE $node_version " "
  end
  # git prompt
  set -l git_directory
  set -l git_dirty
  set -l git_staged
  available fish_git_prompt; and set git_directory (fish_git_prompt)
  available __fish_git_prompt_dirty; and set git_dirty (__fish_git_prompt_dirty)
  available __fish_git_prompt_staged; and set git_staged (__fish_git_prompt_staged)

  # Print a red dot for failed commands.
  if test $exit_code -ne 0
    set_color red
    echo -n "✖ "
    set_color normal
  end

  set NODEp (_node_version)
  set_color green
  echo -n -s "$NODEp"


  # Print the username when the user has been changed.
  if test $USER != $LOGNAME
    echo -n "$USER@"
    set_color normal
  end

  set_color normal

  if test $git_directory
    echo -n "["

    set_color green --bold

    if test $git_dirty
      set_color red
    end
    if test $git_staged
      set_color yellow
    end
    echo (fish_git_prompt '%s')
    set_color normal
    echo -n "]"
  end
  echo -n " 🐠"

end
