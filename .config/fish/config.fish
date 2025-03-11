if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add vi --position command vim
abbr -a drt docker run --security-opt label:disable -v /home/m/Documents/career/grad-school/thesis/code/:/usr/src/app/code -it thesis:latest

set -x DEFAULT_TERM foot
