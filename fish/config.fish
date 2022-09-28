if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/data/data/com.termux/files/home/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end


set -g theme_nerd_fonts yes
set -g theme_display_git_default_branch yes
set -g theme_git_default_branches master main
set -g theme_color_scheme solarized-light  
set -g theme_display_date no
set -g theme_project_dir_length 1
set -g fish_prompt_pwd_dir_length 1

#base16-light 
#terminal-dark    
#solarized-dark 
#dark
#zenburn
#nord

