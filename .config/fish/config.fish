if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr --add v --position command nvim
    abbr -a --position command cddl cd ~/Downloads/
    abbr -a --position command hk hawk.fish
    abbr -a drt docker run --security-opt label:disable -v /home/m/Documents/career/grad-school/thesis/code/:/usr/src/app/code -it thesis:latest
    abbr -a cdt --position command cd ~/Documents/career/grad-school/thesis/
    abbr -a cdtc --position command cd ~/Documents/career/grad-school/thesis/code/
    abbr -a srct --position command "source ~/Documents/career/grad-school/thesis/thesis-env-nodocker/bin/activate.fish; cd ~/Documents/career/grad-school/thesis/code/"
    alias ls "ls --group-directories-first --color"
end

source ~/.private/env.fish
set -x DEFAULT_TERM foot
set -gx RCS_DIR ~/.local/share/rcs/
set -gx XDG_CONFIG_HOME $HOME/.config
