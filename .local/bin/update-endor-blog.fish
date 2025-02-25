#!/usr/bin/env fish
rsync -rvz --delete -e 'ssh -p 3333' --info=progress2 ~/Documents/endor-blog root@207.154.246.183:/var/www/
