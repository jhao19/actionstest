echo $1 | grep -oE '\[(.+?)\]' | sed 's/\[//; s/\]//'
