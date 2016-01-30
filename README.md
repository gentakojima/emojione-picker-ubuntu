# emojione-picker for Ubuntu

Emojione-picker-Ubuntu is a simple emoji picker for Ubuntu 14.04.

![Image of Emoji-picker](https://raw.githubusercontent.com/gentakojima/emojione-picker-ubuntu/master/screenshot.png)

This project is proudly using emoji data from the [Emoji One](http://emojione.com/) project.


## Installation

Installation is optional, but recommended to run the program at session startup easily. Just follow these simple steps:

  1. Install equivs: `sudo apt-get install equivs`. Ok, don't judge me, I'm lazy.
  2. Build the package: `equivs-build debian_package.ctl`
  3. Install it! `sudo dpkg -i emojione-picker*.deb`
  4. Probably don't needed, but this fixes your depencencies if you get an error in the previous step: `sudo apt-get -f install`


## How to run it

If you installed it, the picker should be started on a new session start. Just close your current session, and start it again.

If you want to manually run it now, just press `Alt+F2` and write the command `emojione-picker`.

## How to use it

  1. Choose your emoji from the dropdown menu.
  2. Paste it (usually `Ctrl+V`) wherever you want!

## License

The code is probably poisoned by the GPL somehow, and I'm too lazy to check it. So be it, this will be licensed as GNU GPL v3. You know, *that* license. Check your smart TV or your toaster manual for a printed copy.

Emojis are licensed by the great people of [Emoji One](http://emojione.com/) under a free culture Creative Commons License (CC-BY 4.0).


## FAQ


### Why for Ubuntu only? Does this work with KDE and other distros?

Of course it *should*, but I ~~am incredibly lazy~~ haven't had the time to test it. Please feel free to test and report via the issue tracker.

### When I paste all/some icons, they are shown as ugly boxes. I want my money back!

Even if *you*  can't see the emojis once pasted, they are still there for other people to see. So even if your system can't display it, it will still work for communication with others.

If you still want to see the emojis there are some workarounds to display them in black and white, but full color support will probably take some time. Please take a look at [this guide](http://www.omgubuntu.co.uk/2014/11/see-install-use-emoji-symbols-ubuntu-linux).
