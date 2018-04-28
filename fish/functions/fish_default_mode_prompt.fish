# Defined in /var/folders/66/_ng5qlyj36z668fhytx039wrrs_nwp/T//fish.AKYtQ2/fish_default_mode_prompt.fish @ line 2
function fish_default_mode_prompt --description 'Display the default mode for the prompt'
	# Do nothing if not in vi mode
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
          case default
            set_color --bold red
            echo '🅽 '
          case insert
            set_color --bold green
            echo '🅸 '
          case replace-one
            set_color --bold green
            echo '🆁 '
          case visual
            set_color --bold brmagenta
            echo '🆅 '
        end
        set_color normal
        echo -n ' '
    end
end
