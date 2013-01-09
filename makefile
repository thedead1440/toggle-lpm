
PREFIX ?= /home/user

all:
	true

clean:
	true

install:
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/applications
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps
	mkdir -p $(DESTDIR)/$(PREFIX)/.local/share/data/toggle-lpm
	cp -rpv applications/toggle-lpm.desktop $(DESTDIR)/$(PREFIX)/.local/share/applications/
	cp -rpv data/toggle-lpm/toggle-lpm.sh $(DESTDIR)/$(PREFIX)/.local/share/data/toggle-lpm/
	cp -rpv apps/toggle-lpm-off.png $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps/
	cp -rpv apps/toggle-lpm-on.png $(DESTDIR)/$(PREFIX)/.local/share/icons/hicolor/apps/
.PHONY: all clean install

