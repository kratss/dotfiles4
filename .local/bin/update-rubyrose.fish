#!/usr/bin/env fish
argparse --exclusive 'r,u' r/rsync u/unison l/loop h/help -- $argv
if test -n "$_flag_help"
    echo "-r --rsync      Use rsync. Only syncs one direction"
    echo "-u --unison     Use unison. Syncs in both directions. Requires unison to be installed on remote"
    echo "-l --loop       Sync repeatedly until stopped"
end
if test -n "$_flag_unison"
    set sync unison -batch ~/Documents/rubyrose/ ssh://root@$iprubyrose:3333//var/www/
end
if test -n "$_flag_rsync"
    set sync rsync -rvz -e 'ssh -p 3333' --info=progress2 ~/Documents/rubyrose/ root@$iprubyrose:/var/www/
end
while true
    $sync
    $sshrubyrose "cd /var/www/rcxeblog/; bundle exec jekyll build"
    if not test -n "$_flag_loop"
        break
    end
end
