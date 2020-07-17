# Bobthefish vars
set -g theme_title_use_abbreviated_path yes
set -g theme_show_exit_status yes
set -g fish_prompt_pwd_dir_length 0
set -g theme_color_scheme base16
set -g theme_nerd_fonts yes
#set -g theme_date_format "+%a %H:%M"
set -g theme_display_k8s_context yes
set -g theme_display_k8s_namespace yes
set -g theme_display_git_master_branch yes
set -g theme_display_vi yes
set -g theme_display_date yes 
set -g theme_color_scheme terminal-dark

# aliases
function k; kubectl $argv; end
function kk; kubectl get pod $argv; end
function kc; kubectx $argv; end
function kn; kubens $argv; end
function pbcopy; xclip -selection clipboard $argv; end
function pbpaste; xclip -selection clipboard -o $argv; end
function myweather; weather new york; end
#function diff ; colordiff $argv ; end
function less ; most $argv ; end
function  z; j $argv ; end
#function ls ; exa -F $argv ; end
#function lr ; exa -RT $argv ; end
#function ll ; exa -alhFg --git ; end
#function la ; exa -aF ; end

#environment
fish_vi_key_bindings

#jump
status --is-interactive; and source (jump shell fish | psub)
