#!/bin/sh
# Toggle WLAN by thedead1440

STATUS=$(/sbin/mcetool --status | grep -v grep | grep WLAN | awk '{print $2}' | head -1)

if [ $STATUS == "enabled" ]
	then
	dbus-send --print-reply --dest=com.meego.core.MNotificationManager /notificationmanager com.meego.core.MNotificationManager.addNotification uint32:0 uint32:0 string:'device' string:'' string:"WLAN Off" string:'' string:"/home/user/.local/share/icons/hicolor/apps/toggle-wlan-off.png" uint32:0
	sed -i 's/toggle\-wlan\-on/toggle\-wlan\-off/' /home/user/.local/share/applications/toggle-wlan.desktop
	`/sbin/mcetool --disable-radio=wlan`
	else
	dbus-send --print-reply --dest=com.meego.core.MNotificationManager /notificationmanager com.meego.core.MNotificationManager.addNotification uint32:0 uint32:0 string:'device' string:'' string:"WLAN On" string:'' string:"/home/user/.local/share/icons/hicolor/apps/toggle-wlan-on.png" uint32:0
	sed -i 's/toggle\-wlan\-off/toggle\-wlan\-on/' /home/user/.local/share/applications/toggle-wlan.desktop
	`/sbin/mcetool --enable-radio=wlan`
fi
