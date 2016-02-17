#!/bin/bash

_INSTALL_PREFIX=/usr/local/
_AUTOSTART_DIR=/etc/xdg/autostart

uninstall_emojionepicker(){
	rm -f $_INSTALL_PREFIX/bin/emojione-picker
	rm -f $_AUTOSTART_DIR/emojione-picker_autostart.desktop
	rm -rf $_INSTALL_PREFIX/share/emojione-picker
}

install_emojionepicker(){
	mkdir -p $_INSTALL_PREFIX/bin
	mkdir -p $_AUTOSTART_DIR
	mkdir -p $_INSTALL_PREFIX/share/emojione-picker
	cp emojione-picker $_INSTALL_PREFIX/bin
	cp emojione-picker_autostart.desktop $_AUTOSTART_DIR
	cp -rf assets $_INSTALL_PREFIX/share/emojione-picker/
	sed -i $_AUTOSTART_DIR/emojione-picker_autostart.desktop -e "s*/usr*$_INSTALL_PREFIX*g"
}

if [ "$(id -u)" != "0" ]; then
	echo "Since you are running this as plain user, the program will be installed just for the current user."
	_INSTALL_PREFIX=~/.local
	_AUTOSTART_DIR=~/.config/autostart
else
	_INSTALL_PREFIX=/usr/local
	_AUTOSTART_DIR=/etc/xdg/autostart
fi

if [ -f "$_INSTALL_PREFIX/bin/emojione-picker" ] ; then
	read -p "Installation detected. Press enter to uninstall or Ctrl-C to abort"
	uninstall_emojionepicker
	echo "Uninstall completed."
else
	read -p "Press enter to install emojione-picker or Ctrl-C to abort"
	install_emojionepicker
	echo "Installation completed."
fi

