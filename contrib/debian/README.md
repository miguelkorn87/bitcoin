
Debian
====================
This directory contains files used to package miguelkoind/miguelkoin-qt
for Debian-based Linux systems. If you compile miguelkoind/miguelkoin-qt yourself, there are some useful files here.

## miguelkoin: URI support ##


miguelkoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install miguelkoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your miguelkoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/miguelkoin128.png` to `/usr/share/pixmaps`

miguelkoin-qt.protocol (KDE)

