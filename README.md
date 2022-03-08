# sfowm - fork of dwm

## sfowm is fast and small dynamic window manager for X with compositor and rounded corners

## Installation
```bash
./setup.sh
```
# Running sfowm
### add to .xinitrc
```bash
exec sfowm
```
# dwm with time in bar
```bash
while true; do
	xsetroot -name " $(date +"%F %R") "
	sleep 1m
done &
exec sfowm
```
# Screenshot of sfowm
![sfowm](https://github.com/[username]/[reponame]/blob/[branch]/image.jpg?raw=true)
