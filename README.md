# Emojione Picker for Ubuntu

Emojione-picker-Ubuntu is a simple emoji picker for Ubuntu 14.04+ running Unity 7 and some other GNU/Linux distributions and desktop environments.

![Image of Emoji-picker](https://raw.githubusercontent.com/gentakojima/emojione-picker-ubuntu/master/screenshot.png)

This project is proudly using emoji data from the [Emoji One](http://emojione.com/) project.

## Installation

Installation is optional, but recommended to run the program at session startup easily. 

### Method 1: Build a Debian Package

This method requires root access and was only tested on Ubuntu 14.04, 15.10 and 16.04. If you can't become root, use other method.

Are you still here? Good. So just follow these simple steps:

  1. Install equivs: `sudo apt-get install equivs`. Ok, don't judge me, I'm lazy.
  2. Build the package: `equivs-build debian_package.ctl`
  3. Install it! `sudo dpkg -i emojione-picker*.deb`
  4. Probably don't needed, but this fixes your depencencies if you get an error in the previous step: `sudo apt-get -f install`

### Method 2: Standalone installer (should work on any distro!)

This method does not require root access. If you run it as root, the picker will be installed for all users.

  1. Just run `./install.sh`
  2. If you want to uninstall it later, just issue the `./install.sh` again.

## How to run it

If you installed it, the picker should be started on a fresh session start. Just close your current session, and start it again.

If you want to manually run it right now, just press `Alt+F2` and write the command `emojione-picker`. If you used the standalone installer and installed it just for the current user, you might need to specify the path to the program, that is `~/.local/bin/emojione-picker`.

## Troubleshooting issues

The indicator usually takes 3 to 5 seconds to load, but it can take up to 30 seconds in older computers. In *Settings*, enable the option *Low end computer mode* to reduce the number of menu items (and emojis). That should speed up loading time. Currently, this mode shows about 1100 emojis out of 1700, but I intend to lower that to about 900 in the future.

## How to use it

  1. Choose your emoji from the dropdown menu.
  2. Paste it (usually `Ctrl+V`) wherever you want!

## License

The code is probably poisoned by the GPL somehow, and I'm too lazy to check it. So be it, this will be licensed as GNU GPL v3. You know, *that* license. Check your smart TV or your toaster manual for a printed copy.

Emojis are licensed by the great people of [Emoji One](http://emojione.com/) under a free culture Creative Commons License (CC-BY 4.0).

## FAQ

### Why for Ubuntu only? Does this work with KDE and other distros?

Of course, but it was designed to work with the Unity desktop. It's been reported to work with Cinnamon, XFCE, Openbox (with Stalonetray and Tint2), Gnome Shell and KDE. 

Unfortunately, Cinnamon implementation won't show the content of submenus if the total height is bigger than the screen height.

### When I paste all/some icons, they are shown as ugly boxes. I want my money back!

Recent GNU/Linux distributions (including Ubuntu 14.04, 15.10) won't display emojis properly. Supporting full color emojis in text will take some work, and will be probably ready in the near future, but it's still not ready for everybody. Good news is that, even if you can't see them properly, the emojis are still there and others will see them.

Most emojis are displayed in Ubuntu 16.04, but only in black and white. To apply the same solution to older distributions, take a look at [this guide](http://www.omgubuntu.co.uk/2014/11/see-install-use-emoji-symbols-ubuntu-linux).
