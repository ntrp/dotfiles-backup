fish_vi_key_bindings

# Set the cursor shapes for the different vi modes.
set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

set -U FZF_LEGACY_KEYBINDINGS 0
set -gx FZF_DEFAULT_COMMAND "fd --type f --no-ignore --hidden --follow . \$dir 2> /dev/null"
set -gx FZF_DEFAULT_OPTS "--height 40%"
set -gx FZF_FIND_FILE_COMMAND "$FZF_DEFAULT_COMMAND"
set -gx FZF_FIND_FILE_OPTS "$FZF_DEFAULT_OPTS --preview 'string match -q \"*binary\" -- (file --mime {}) && echo \"Binary file\" || rougify {}' --bind shift-up:preview-up,shift-down:preview-down"
set -gx FZF_CD_COMMAND "fd --type d --no-ignore --hidden --follow . \$dir 2> /dev/null"
set -gx FZF_CD_OPTS "--preview 'tree -C {}' --bind shift-up:preview-up,shift-down:preview-down"

set -gx XSECURELOCK_PAM_SERVICE "system-local-login"
set -gx XSECURELOCK_FONT "lucidasans-24"

set -gx _JAVA_AWT_WM_NONREPARENTING 1

set -g pure_color_prompt_on_success (set_color green)

source /home/ntrp/_WorkWS/porsche/_github/myct-cloud-helpers/cloud-helpers.fish
source /home/ntrp/_WorkWS/porsche/_github/myct-cloud-helpers/cloud-helpers-completion.fish

thefuck --alias | source

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/ntrp/.config/nvm/11.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /home/ntrp/.config/nvm/11.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/ntrp/.config/nvm/11.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /home/ntrp/.config/nvm/11.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/ntrp/.config/nvm/11.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /home/ntrp/.config/nvm/11.11.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
       exec sway > ~/.sway.log 2>&1 
    end
end
