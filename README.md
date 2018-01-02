# tintin-kallisti-pack
#
Welcome to the tintin++ accessibility pack for [Legends of Kallisti][kallisti]. Features include

- MSP support for sound
- MSDP support for audio queues  like your prompt and your opponent's condition
- automation of some mundane and repetitive tasks like eating and drinking. 

The pack is under heavy development and will be expanded quite often. To stay up to date with the latest changes and bug fixes it is recommended you run from git.


## Requirements

#### Linux

The requirements are few. You just need tintin++of course and sox for sound capabilities. Both of these should be available in your distribution's package manager.

#### Mac

Getting tintin++ and sox in the Mac environment is a bit more tricky. Here are some steps to get you going.

1. Install Homebrew
2. Using Homebrew, install coreutils, gnu-sed, tintin++, and sox


 ## Launching the pack

To start the pack, switch to the tintin-kallisti-pack directory and type tt++ kallisti.tin. When the pack first opens it will check for the latest sound pack. This can take several seconds. If a new soundpack is found, it will be downloaded and extracted for you.

To connect to the game, simply type login. You will be connected and once the connection has been established, you will hear a short quick series of beeps. At this point you can enter your account name and password.


## Usage

To enable sound, while in the game, you will need to type toggle sound. You only need to do this once and the setting will be applied to your whole account.


## Getting the Most out of the Pack

#### Set Keys

If you use a command a lot, such as kick in combat, you may not want to type kick and hit enter over and over again. The pack is configured to repeat the last action on the press of the enter key, but what if you want to do several different things during combat. For this, the pack has set keys. To create one of the keys, just type set followed immediately by the character you want to assign. Then space and enter the command. Here is an example of setting c to kick:

` setc kick

To use the command, hold the alt key and press the letter. So, now to kick, you can just press alt+c. You can use shift with some of the keybindings too. Here are all the keys available to set keys, a, b, c, d, e, f, g, h, n, q, r, s, t, v, w, x, y, z, A, D, F, H, Q, W, and E.

This feature is made even more powerful because it is infinitely expandable thanks to key profiles. You can make a new key profile by typing keyprofile name. If the profile does not exist, it will be created, if it does exist, then you will switch to the named profile and its bound keys will become immediately available for use.  You can have as many profiles as you can think of, one for casting, one for tanking, the list goes on and on.

To see if a key is bound already or not, just type set and the etter with no arguments. If the key is already bound it will show what it does, if not it will say the key is not set.

## Automation

When in charge of protecting your comrades  in a group, it can be easy to miss someone being attacked until it's too late. To make things easier for you, we offer autorescue. You can rescue multipe people, just add them to the list separated by spaces. So, autorescue jack jill will enable automatic rescuing for Jack and Jill. To turn it off, just type noautorescue.

Eating and drinking can be a chore. With the pack's autoeat and autodrink, however, it's a snap. Just turn them on with autoeat item and autodrink drinkcontainer. For example, to eat breat you would type autoeat bread and to autodrink from at waterskin you would type autodrink waterskin.

Sometimes, it's nice to have a little buffer against death. It is kind of frustrating when your level 50 Paragon dies, and you realize long after the fact that you probably could have saved them with a bit more fast thinking and even faster typing. Autorecall offers a way to hopefully avoid getting killed. It is by no means 100% affective, but if you do get killed, you can rest assured that the pack did everything in is power to prevent it. To enable autorecall, simply type autorecall followed by the command you would like to use to recall.

This is a good time to bring up the / character. Normally it is a shortcut for say in the game. We have repurposed it, however, to the more standard function of recall. If you are below level 20, it will use the standard recall command. After level 20, however, it  will try to get a recall scroll from your container and recite it. So, you could just do autorecall / and the pack will try to use the best option to recall you if your hitpoints drop below 20%. Another good options for bards may be to set autorecall play gelsewhere. Just make sure that whatever command you use will work during combat. The paragon version of recall, for example, does not work during combat. Check in game help files to make the best decision for your character.

## Container

A lot of things depend on your container. You can set your container with the container command. Container bag will use a bag as your container. Of course, thanks to the in game label command, you need not worry about conflicting names. Do you have a bag and a baguette?  Simply labe your bag something else like a stuffholder, set container stuffholder, and the pack won't try to store your stuff in your bread. In game, see help label for more information.

#### Multiple Items

Sometimes you want to buy, drop, get, give, or put multiple things at once. If you just put a , between itesm, the pack will try to do what you want. So, get sword, shield, hat will get all the listed things. This should work for most things, just try and and see. It even works with containers. Remember if you need to do multiple of the same action, just prefix the action with a number, e.g. #10 buy recall.

#### Channel Buffers

You can review the last 10 channel posts using the alt+1-0 commands. Alt+1 will show the last message posted to the channel.  You can switch between channels very quickly by using alt+shift+1-0 to go directly to the channel you want. A slower method of switching channels is alt+- for previous channel and alt+= for next channel.

#### Music

You can control your music player directly from the pack. Several music players are supported, and more can be added so long as they can be controled from the CLI. Our supported players are:

- audacious
- cmus
- moc
- mopidy (requires mpc)
- mpd (requires mpc)
- pianobar (requires customization found in contrib directory)
- xmms2

The keybindings for music players are as follows. Note that not every option is supported for every player, for example previous track does not work in pianobar. Each music binding is prefixed with alt+shift, so alt+shift+Z for previous track.

- Z: Previous Track
- X: Play
- C: Pause
- V: Stop
- B: Next Track
- M: Post the currently playing track to the music channel.
- S: Shuffle
- R: Repeat
- U: Show Track Information
- {: Rewind
- }: Fast Forward

In  addition to the listed keybindings there are some commands  to change settings and post lyrics. The commands are as follows.

- musicchannel: set the channel where music is posted. The default is music.
- musiclinks: Adds a shortened youtube search link for the posted song. Disable with nomusiclinks. You can use your own custom installation of yourls by supplying an api key after the musiclinks command.
- mpost: Same as alt+shift+M listed above.
- mplyrics: Post the lyrics to the currently playing track to the music channel. Be careful with this, it has been known to misfire. It requires fortune-mod and clyrics be installed to work.


#### Paths and Modules

Character settings, command history, and custom modules are all saved in the ${XDG_CONFIG_HOME}/tintin-kallisti/ directory. In most cases this means ~/.config/tintin-kallisti/. All your settings and on the fly actions and aliases as  well as keybindings are save in this directory under a file with the same name as your character. Your command history is in a file with the same name appended with .history.

Modules should mostly just run in the background and do their thing. Occasionally you may need to interact with them, so for these situations the following commands are available.

- modkill: unload a module.
- modload: Load a module.
- modreload: Reloads the module.

#### Custom Modules

Although we try our best, we just can't handle all situations for all characters. This is where custom modules come in. To create your own modules that are loaded when you login your character, simply go to the settings directory, normally ~/.config/tintin-kallisti/ and create a new directory called Character.modules. So, for example, if I have a character named Jack, the directory name will need to be Jack.modules. Name modules with the .tin extension and they will be automatically loaded.

The pack's components are normally set to precedence 9 and move up to 8 if something needs to be overridden. So, for character modules, make your actions and aliases 5 or higher and there should not be any conflicts.

If you need to work with character modules after the pack has loaded you can use the cmod command.

- cmodkill: unload a module.
- cmodload: Load a module.
- cmodreload: Reloads the module.

So, if you have a module in Jack.modules called awesome.tin, and you've just made some changes to it, just issue the command cmodreload awesome to have the changes applied. You can see all the loaded modules with the #class command. All character modules are prefixed with character_ and everything else is in the modules directory of the pack.


Donations

If you like our work and would like to donate, please take a look at [the Linux Accessibility Organization][a11y] page.A


[a11y]: https://www.bountysource.com/teams/linux-a11y
[kallisti]: http://kallistimud.com
