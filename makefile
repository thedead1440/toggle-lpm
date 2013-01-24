
PREFIX ?= /home/user

all:
	true

clean:
	true

install:
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/data/toggle-lpm
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/applications
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps
	cp -rpv applications/toggle-lpm.desktop $(DESTDIR)/$(PREFIX)/.local/share/applications/toggle-lpm.desktop
	cp -rpv data/toggle-lpm/toggle-lpm.sh $(DESTDIR)/$(PREFIX)/.local/share/data/toggle-lpm/toggle-lpm.sh
	cp -rpv apps/toggle-lpm-off.png $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps/toggle-lpm-off.png
	cp -rpv apps/toggle-lpm-on.png $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps/toggle-lpm-on.png
.PHONY: all clean install

