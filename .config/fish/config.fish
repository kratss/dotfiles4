if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting "Welcome to fish. 
  v:    nvim
  cddl: cd ~/Downloads/ 
  cdt:  cd thesis
  hk:   hawk.fish 
  srct: cd and source thesis code
  wl:   wl-copy"
    abbr --add v --position command nvim
    abbr -a --position command cddl cd ~/Downloads/
    abbr -a --position command hk hawk.fish
    abbr -a srct --position command "source ~/Documents/career/grad-school/thesis/code/env-thesis/bin/activate.fish; cd ~/Documents/career/grad-school/thesis/code/"
    abbr -a wl --position command wl-copy
    abbr -a ltx --position command "pdflatex thesis.tex; biber thesis; pdflatex thesis.tex; pdflatex thesis.tex; fifi thesis.pdf"
    alias ls "ls --group-directories-first --color"
end

source ~/.private/env.fish
set -x DEFAULT_TERM foot
set -x EDITOR nvim
set -gx RCS_DIR ~/.local/share/rcs/
set -gx XDG_CONFIG_HOME $HOME/.config

function fish_title
    echo (prompt_pwd)
end
