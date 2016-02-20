# emojione-picker for Ubuntu

Emojione-picker-Ubuntu is a simple emoji picker for Ubuntu 14.04+ running Unity and other desktop environments.

![Image of Emoji-picker](https://raw.githubusercontent.com/gentakojima/emojione-picker-ubuntu/master/screenshot.png)

This project is proudly using emoji data from the [Emoji One](http://emojione.com/) project.

## Installation

Installation is optional, but recommended to run the program at session startup easily. 

### Ubuntu 14.04, 15.10

Just follow these simple steps:

  1. Install equivs: `sudo apt-get install equivs`. Ok, don't judge me, I'm lazy.
  2. Build the package: `equivs-build debian_package.ctl`
  3. Install it! `sudo dpkg -i emojione-picker*.deb`
  4. Probably don't needed, but this fixes your depencencies if you get an error in the previous step: `sudo apt-get -f install`

### Standalone installer (should work on any distro!)

  1. Just run `./install.sh`
  2. If you want to uninstall it later, just issue the `./install.sh` again.

## How to run it

If you installed it, the picker should be started on a new session start. Just close your current session, and start it again.

If you want to manually run it now, just press `Alt+F2` and write the command `emojione-picker`. If you used the standalone installer and installed it just for the current user, you might need to specify the path to the program, that is `~/.local/bin/emojione-picker`.

## Troubleshooting issues

The indicator might take some time to display on older systems. It usually takes 3 to 5 seconds, but as stated on issue #3, it can take up to 30 seconds, so be patient.

## How to use it

  1. Choose your emoji from the dropdown menu.
  2. Paste it (usually `Ctrl+V`) wherever you want!

## License

The code is probably poisoned by the GPL somehow, and I'm too lazy to check it. So be it, this will be licensed as GNU GPL v3. You know, *that* license. Check your smart TV or your toaster manual for a printed copy.

Emojis are licensed by the great people of [Emoji One](http://emojione.com/) under a free culture Creative Commons License (CC-BY 4.0).

## FAQ

### Why for Ubuntu only? Does this work with KDE and other distros?

Of course, but it was designed to work with the Unity desktop. It's been reported to work in Cinnamon, XFCE, Openbox, Gnome and KDE. 

Unfortunately, Cinnamon won't show the content of submenus if the total height is bigger than the screen height.

### When I paste all/some icons, they are shown as ugly boxes. I want my money back!

Even if *you*  can't see the emojis once pasted, they are still there for other people to see. So even if your system can't display it, it will still work for communication with others.

If you still want to see the emojis there are some workarounds to display them in black and white, but full color support will probably take some time. Please take a look at [this guide](http://www.omgubuntu.co.uk/2014/11/see-install-use-emoji-symbols-ubuntu-linux).
