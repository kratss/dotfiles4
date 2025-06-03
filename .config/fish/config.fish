if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting "Welcome to fish. 
  v:    nvim
  cddl: cd ~/Downloads/ 
  hk:   hawk.fish "
    abbr --add v --position command nvim
    abbr -a --position command cddl cd ~/Downloads/
    abbr -a --position command hk hawk.fish
    abbr -a drt docker run --security-opt label:disable -v /home/m/Documents/career/grad-school/thesis/code/:/usr/src/app/code -it thesis:latest
    abbr -a cdt --position command cd ~/Documents/career/grad-school/thesis/
    abbr -a cdtc --position command cd ~/Documents/career/grad-school/thesis/code/
    abbr -a srct --position command "source ~/Documents/career/grad-school/thesis/code/env-thesis/bin/activate.fish; cd ~/Documents/career/grad-school/thesis/code/"
    abbr -a wl --position command wl-copy
    alias ls "ls --group-directories-first --color"
end

source ~/.private/env.fish
set -x DEFAULT_TERM foot
set -x EDITOR nvim
set -gx RCS_DIR ~/.local/share/rcs/
set -gx XDG_CONFIG_HOME $HOME/.config
