# Set vim as default editor
set -x EDITOR 'vim'

# Initialize rbenv
status --is-interactive; and source (rbenv init -|psub)
