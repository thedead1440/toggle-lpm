
PREFIX ?= /home/user

all:
	true

clean:
	true

install:
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/data/toggle-wlan
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/applications
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps
	cp -rpv applications/toggle-wlan.desktop $(DESTDIR)/$(PREFIX)/.local/share/applications/toggle-wlan.desktop
	cp -rpv data/toggle-wlan/toggle-wlan.sh $(DESTDIR)/$(PREFIX)/.local/share/data/toggle-wlan/toggle-wlan.sh
	cp -rpv apps/toggle-wlan-off.png $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps/toggle-wlan-off.png
	cp -rpv apps/toggle-wlan-on.png $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps/toggle-wlan-on.png
.PHONY: all clean install

