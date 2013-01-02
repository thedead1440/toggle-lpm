#!/bin/sh
# Toggle Low Power Mode (Standby Screen) by thedead1440

STATUS=$(gconftool --get /system/osso/dsm/display/use_low_power_mode)

if [ $STATUS == "true" ]
	then
	gconftool -s --type=bool /system/osso/dsm/display/use_low_power_mode false
	sed -i 's/toggle\-lpm\-on/toggle\-lpm\-off/' /home/user/.local/share/applications/toggle-lpm.desktop
	dbus-send --print-reply --dest=com.meego.core.MNotificationManager /notificationmanager com.meego.core.MNotificationManager.addNotification uint32:0 uint32:0 string:'device' string:'' string:"Standy Screen Off" string:'' string:"/home/user/.local/share/icons/hicolor/apps/toggle-lpm-off.png" uint32:0
        else
	gconftool -s --type=bool /system/osso/dsm/display/use_low_power_mode true
        sed -i 's/toggle\-lpm\-off/toggle\-lpm\-on/' /home/user/.local/share/applications/toggle-lpm.desktop
dbus-send --print-reply --dest=com.meego.core.MNotificationManager /notificationmanager com.meego.core.MNotificationManager.addNotification uint32:0 uint32:0 string:'device' string:'' string:"Standy Screen On" string:'' string:"/home/user/.local/share/icons/hicolor/apps/toggle-lpm-on.png" uint32:0
fi
