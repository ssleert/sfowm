# sfowm - fork of dwm 

## sfowm is fast and small dynamic window manager for X
 with compositor and rounded corners

## Installation
```bash
./setup.sh
```
# Running sfowm
### add to .xinitrc
```bash
exec sfowm
```
# Add time in bar
```bash
while true; do
	xsetroot -name " $(date +"%F %R") "
	sleep 1m  
done &
```
