#!/bin/sh
# Toggle WLAN by thedead1440

STATUS=$(/sbin/mcetool --status | grep -v grep | grep WLAN | awk '{print $2}' | head -1)

if [ $STATUS == "enabled" ]
	then
	sed -i 's/toggle\-wlan\-on/toggle\-wlan\-off/' /home/user/.local/share/applications/toggle-wlan.desktop
	gconftool -s --type=bool /system/osso/connectivity/network_type/restricted_mode true
	`/sbin/mcetool --disable-radio=wlan`
	else
	sed -i 's/toggle\-wlan\-off/toggle\-wlan\-on/' /home/user/.local/share/applications/toggle-wlan.desktop
	gconftool -s --type=bool /system/osso/connectivity/network_type/restricted_mode false
	`/sbin/mcetool --enable-radio=wlan`
fi
