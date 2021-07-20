function fish_right_prompt -d "Write out the right prompt"


  set -g ICON_NODE             \UE718   " "     # îœ˜ from Devicons or â¬¢

  set -l exit_code $status


  function available -a name -d "Check if a function or program is available."
    #-a NAMES assigns the value of successive command-line arguments to the names given in NAMES
    type -q $name
  end
  
  # node version
  function _node_version -d "Get the currently used node version if NVM exists"
    set -l node_version
    available fnm; and set node_version (string trim -l -c=v (node -v 2>/dev/null)) # trimmed lef 'v'; can use 'nvm current', but slower
    test $node_version; and echo -n -s $ICON_NODE $node_version " "
  end

  # git prompt

  # Print a red dot for failed commands.
  if test $exit_code -ne 0
    set_color red
    echo -n "â€¢ "
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
  echo -n "["
  echo (fish_git_prompt '%s')
  echo -n "]"
  echo -n " 🐠"

end
