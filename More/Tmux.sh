$ tmux new -s "Name_"					# Open new session and name it
$ tmux attach -t "Num_"					# Open old session
$ tmux kill-session -t "Name_or_Num_"	# Delete session Name or Number

: new-window							# New window 
: rename-window							# Raname current window
: new-window -n "Name_"                 # New window and rename

C+b_%									# Vertical pane
C+b_"									# Horizontal pane "
C+b_C+ "Arrow_keys_"					# Resize pane


# ========================================================================
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
set -g @plugin 'tmux-plugins/tpm'
run '~/.tmux/plugins/tpm/tpm'

$ tmux C+b I
# ========================================================================
