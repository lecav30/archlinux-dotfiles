# Shell aliases and functions
if test -f ~/.config/fish/aliases.fish
    source ~/.config/fish/aliases.fish
end

if status is-interactive
    starship init fish | source
    zoxide init fish | source
end

# Development paths shared with Zsh.
fish_add_path -g /usr/local/bin /usr/local/sbin
fish_add_path -g $HOME/development/flutter/bin /usr/local/mysql/bin
fish_add_path -g $HOME/.local/share/nvim/mason/bin $HOME/.local/bin
fish_add_path -g $HOME/.jenv/bin $HOME/.jenv/shims

set -gx EDITOR nvim
set -gx LANG en_US.UTF-8

# Bun and pnpm
set -gx BUN_INSTALL $HOME/.bun
fish_add_path -g $BUN_INSTALL/bin
set -gx PNPM_HOME $HOME/Library/pnpm
fish_add_path -g $PNPM_HOME

# Android
set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx ANDROID_HOME $ANDROID_SDK_ROOT
fish_add_path -g $ANDROID_SDK_ROOT/emulator $ANDROID_SDK_ROOT/platform-tools

# NVM's shell functions are Bash/Zsh-specific. Use Zsh to switch Node versions;
# Fish can still run the Node binary already available on PATH.
