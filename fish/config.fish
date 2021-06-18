# Set the cursor shapes for the different vi modes.
set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

# FZF
set -U FZF_LEGACY_KEYBINDINGS 0

set -gx FZF_TMUX 1
set -gx FZF_TMUX_HEIGHT "40%"
set -gx FZF_DEFAULT_OPTS "--layout reverse --preview-window right:40%:noborder:wrap --color='preview-bg:#222222' --bind shift-up:preview-up,shift-down:preview-down"
# commands
set -gx FZF_FIND_FILE_COMMAND "fd --type f --no-ignore --hidden --follow . \$dir 2> /dev/null"
set -gx FZF_CD_COMMAND "fd --type d --no-ignore --follow . \$dir 2> /dev/null"
set -gx FZF_CD_WITH_HIDDEN_COMMAND "fd --type d --no-ignore --hidden --follow . \$dir 2> /dev/null"
set -gx FZF_OPEN_COMMAND "$FZF_FIND_FILE_COMMAND"
# preview
set -gx FZF_PREVIEW_FILE_CMD "string match -q \"*binary\" -- (file --mime {}) && echo \"Binary file\" || bat --style=numbers --color=always {}"
set -gx FZF_PREVIEW_DIR_CMD "tree -C {}"
# opts
set -gx FZF_FIND_FILE_OPTS "--header 'file >'"
set -gx FZF_CD_OPTS "--header 'dir >'"
set -gx FZF_CD_WITH_HIDDEN_OPTS "--header 'dir hidden >'"
set -gx FZF_REVERSE_ISEARCH_OPTS "--header 'history >' --preview 'echo {} | bat -l bash --style=numbers --color=always -'"
set -gx FZF_OPEN_OPTS "--header 'open >'"

set -gx GOPATH ~/.go
set -g pure_color_prompt_on_success (set_color green)
set -g pure_color_current_directory (set_color 47b6ff)

thefuck --alias | source

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
      #exec startx -- -keeptty
      #exec sway
      #set SWAYSOCK /run/user/(id -u)/sway-ipc.(id -u).(pgrep -x sway).sock
      #exec dwl -s ~/.winit > /tmp/dwl-state
    end
end

