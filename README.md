# tintin-kallisti-pack

Welcome to the TinTin++ accessibility pack for [Legends of Kallisti][kallisti] written by [Hunter Jozwiak][hjozwiak] and [Storm Dragon][storm]. Features include

- MSP support for sound
- MSDP support for audio queues  like your prompt and your opponent's condition
- Automation of some mundane and repetitive tasks like eating and drinking. 

The pack is under heavy development and will be expanded quite often. To stay up to date with the latest changes and bug fixes it is recommended you run from git.


## Requirements

#### Linux

The requirements are few. You just need TinTin++ of course and SoX for sound capabilities. Both of these should be available in your distribution's package manager.

#### Mac

Getting TinTin++ and SoX in the Mac environment is a bit more tricky. Here are some steps to get you going.

1. Install Homebrew
2. Using Homebrew, install coreutils, gnu-sed, tintin++, and sox


## Launching the pack

To start the pack, switch to the tintin-kallisti-pack directory and type tt++ kallisti.tin. When the pack first opens it will check for the latest sound pack. This can take several seconds. If a new soundpack is found, it will be downloaded and extracted for you.

To connect to the game, simply type login. You will be connected and once the connection has been established, you will hear a short quick series of beeps. At this point you can enter your account name and password.


## Usage

To enable sound, while in the game, you will need to type toggle sound. You only need to do this once and the setting will be applied to your whole account. You can raise or lower the volume of sound with the keybindings listed below.

- alt+shift+>: Volume down
- shift+alt+?: Volume up


## Getting the Most out of the Pack

#### Set Keys

If you use a command a lot, such as kick in combat, you may not want to type kick and hit enter over and over again. The pack is configured to repeat the last action on the press of the enter key, but what if you want to do several different things during combat. For this, the pack has set keys. To create one of the keys, just type set followed immediately by the character you want to assign. Then space and enter the command. Here is an example of setting c to kick:

    setc kick

To use the command, hold the alt key and press the letter. So, now to kick, you can just press alt+c. You can use shift with some of the keybindings too. Here are all the keys available to set keys, a, b, c, d, e, f, g, h, n, q, r, s, t, v, w, x, y, z, A, D, F, H, Q, W, and E.

This feature is made even more powerful because it is infinitely expandable thanks to key profiles. You can make a new key profile by typing keyprofile name. If the profile does not exist, it will be created, if it does exist, then you will switch to the named profile and its bound keys will become immediately available for use.  You can have as many profiles as you can think of, one for casting, one for tanking, the list goes on and on.

To see if a key is bound already or not, just type set and the etter with no arguments. If the key is already bound it will show what it does, if not it will say the key is not set.

#### Automation

You can automate recasting of spells, or send a message when they drop. This section is being updated constantly, so if what ou want isn't there, just let one of us know, or wait and we'll get it eventually. To use one of these, set autokeyword and the command to use. If you want to have multiple arguments, just put them in braces. For example autosanc {get sanctuary bag;quaff sanctuary}. You can unset the automation of these spells by prefixing the command with no as in noautosanc.

- autoheal: Show the people you are automatically healing. (see below)
- autoheal add name: Add person to autoheal list. (see below)
- autoheal remove name: Remove person from autoheal list. (see below)
- autoheal self {args}: Set commands used to automatically heal yourself when your hitpoints drop below 50%.
autobarkskin {args}: Recast barkskin when it drops.
autobless {args}: Recast barkskin when it drops.
autoffire {args}: Recast faerie fire when it drops.
- autopick: Automatically try to pick closed doors. Requires pick lock.
- autopoke {args}: that method of attack used when your group leader pokes or points at a target. (This is different then the poke or point social, pack users can use the p alias.)
- autorecall {args}: Commands to be used when hitpoints drop below 20%. (see below)
- autorescue: Show the people you are automatically rescuing. (see below)
- autorescue add name: Add person to autorescue list. (see below)
- autorescue remove name: Remove person from autorescue list. (see below)
- autosanc {args}: Triggers when sanctuary falls.
- autoshape args: Automatically change to the given shape when shape change wears off.
- autotumble: Causes you to tumble if you are set on fire or coated in acid.
- autovigor {args}: Triggers when vigor falls.
- autowarcry: Renews warcry automatically.
- autowarpaint color: Renews warpaint automatically with the specified color, azure, crimson, or mandrake.

When in charge of protecting your comrades  in a group, it can be easy to miss someone being attacked until it's too late. To make things easier for you, we offer autorescue. You can rescue multiple people, just add them to the list as in autorescue add name. So, autorescue add jack;autorescue add jill will enable automatic rescuing for Jack and Jill. To turn it off, just type noautorescue.

The same convenience is available for healers. Just use the autoheal command instead of autorescue. The autoheal command will try to use the most sensible option for your class, e.g. heal for priest based classes and lay hands for paladins.

Eating and drinking can be a chore. With the pack's autoeat and autodrink, however, it's a snap. Just turn them on with autoeat item and autodrink drinkcontainer. For example, to eat breat you would type autoeat bread and to autodrink from at waterskin you would type autodrink waterskin.

If you want to hunt something and walk to it, use track target. When you reach the target you will hear a notification tone. If you can't reach your target or need to cancel for any reason, type notrack.

Sometimes, it's nice to have a little buffer against death. It is kind of frustrating when your level 50 Paragon dies, and you realize long after the fact that you probably could have saved them with a bit more fast thinking and even faster typing. Autorecall offers a way to hopefully avoid getting killed. It is by no means 100% affective, but if you do get killed, you can rest assured that the pack did everything in is power to prevent it. To enable autorecall, simply type autorecall followed by the command you would like to use to recall.

This is a good time to bring up the / character. Normally it is a shortcut for say in the game. We have repurposed it, however, to the more standard function of recall. If you are below level 20, it will use the standard recall command. After level 20, however, it  will try to recite a recall scroll _which must be present in your inventory_, then get a new scroll from your container. Remember, the scroll must be in your inventory for this to work. You could just do autorecall / and the pack will try to use the best option to recall you if your hitpoints drop below 20%. Another good option for bards may be to set autorecall play gelsewhere. Just make sure that whatever command you use will work during combat. The paragon version of recall, for example, does not work during combat. Check in game help files to make the best decision for your character.

If you need to schedule something to happen at a given time in the game, just type the command at time commands. Time must be between 0, 12:00AM, and 23, 11:23PM. To find out the current time in the game type time, or show world_time. As in most other commands, for multiple arguments close them in brackes and separate them with semi-colons. This is very useful for shops that don't open until morning, or the riding instructor.

#### Container

A lot of things depend on your container. You can set your container with the container command. Container bag will use a bag as your container. Of course, thanks to the in game label command, you need not worry about conflicting names. Do you have a bag and a baguette?  Simply label your bag something else like a stuffholder, set container stuffholder, and the pack won't try to store your stuff in your bread. In game, see help label for more information.


#### Miscellaneous Client Side Commands

These commands are available for convenience, to present important information quickly, or to change the output of the game. To turn them off where applicable, prefix them with no as in nocspam.

- audioprompt: Audible prompts for your condition. Hp is left, Mana is centered,  stamina is right. (enabled by default)
- beeps: Audible indication of opponent's condition, the lower the beep the more hurt your enemy. (enabled by default)
- cspam: Cuts down on or shortens some of the game's output.
- filter: Filters out items you can not use when listing from shops or looking in containers. Will also work on inventory.
- p target: Activate your parties "poke trigger". Initiates attack if successful.
- whoami: Shows your name, level, and class. Will also show last death information if available.

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


#### Navigation

There are some keys that will make it easier for you to walk around. Instead of typing scan, north, south, east, west, up or down, you can simply hold alt and walk around with the following keys:

- i: North
- ,: South
- l: East
- j: West
- k: Scan
- shift+I Up
- shift+<: Down


#### Paths and Modules

Character settings, command history, and custom modules are all saved in the ${XDG_CONFIG_HOME}/tintin-kallisti/ directory. In most cases this means ~/.config/tintin-kallisti/. All your settings and on the fly actions and aliases as  well as keybindings are save in this directory under a file with the same name as your character. Your command history is in a file with the same name appended with .history.

Modules should mostly just run in the background and do their thing. Occasionally you may need to interact with them, so for these situations the following commands are available.

- modkill: unload a module.
- modload: Load a module.
- modreload: Reloads the module.

#### Custom Modules

Although we try our best, we just can't handle all situations for all characters. This is where custom modules come in. To create your own modules that are loaded when you login your character, simply go to the settings directory, normally ~/.config/tintin-kallisti/ and place your modules in the Character.modules directory you will find there. So, for example, if I have a character named Jack, the directory name will be Jack.modules. Name modules with the .tin extension and they will be automatically loaded.

The pack's components are normally set to precedence 9 and move up to 8 if something needs to be overridden. So, for character modules, make your actions and aliases 5 or less and there should not be any conflicts. For clarification, the lower the number, the higher the precedence.

There is a hook system to minimize the need to overwrite whole actions. You can store the code you want to run with an action that offers a hook in a variable called by the action. If you look for the action code, the name of the hook will be listed at the top. For example, mob death hook is called mobDeath. So, you can store code in mobDeath variables in multiple character modules and the code will be executed each time a mob dies. The one  caveat is when calling variables inside a variable, you will need to use two dollar signs ($$). Here is a small example that will cheer if your health is good after a fight, but pant if it is not so great, less than 50%.

    #variable {mobDeath.victory}
    {
        #if {$$MSDP_HEALTH >$$MSDP_HEALTH_MAX / 2}
        {
            cheer
        };
        #else
        {
            pant
        }
    }

Hooks are being added and improved constantly. If you don't see the one you need, please ask for it. Once completed, the hook system can add a whole new level of robustness to the pack.


If you need to work with character modules after the pack has loaded you can use the cmod command.

- cmodkill: unload a module.
- cmodload: Load a module.
- cmodreload: Reloads the module.

So, if you have a module in Jack.modules called awesome.tin, and you've just made some changes to it, just issue the command cmodreload awesome to have the changes applied. You can see all the loaded modules with the #class command. All character modules are prefixed with character_ and everything else is in the modules directory of the pack.


## Social Media

The pack supports posting some accomplishments to a few different social media platforms. The list of things that can be automatically posted is growing, but so far it will do every 10 meta sessions, when your position changes on a top 10 board, and when you level. Supported platforms are GNU Social, Mastodon, and Twitter. To enable type the following commands, prefix them with no to turn it off, as in nomastodon:

- gnusocial: Built in support using curl. Set your info with ginfo you@gnusocial.domain PASSWORD
- mastodon: Available if [madonctl][madonctl] is installed and configured.
- twitter: Available if [oysttyer][oysttyer] is installed and configured.


## Donations

If you like our work and would like to donate, please take a look at [the Linux Accessibility Organization][a11y] page.


[a11y]: https://www.bountysource.com/teams/linux-a11y
[hjozwiak]: https://liberapay.com/hjozwiak/donate
[kallisti]: http://kallistimud.com
[madonctl]: https://github.com/McKael/madonctl
[oysttyer]: https://github.com/oysttyer/oysttyer
[storm]: https://liberapay.com/stormdragon2976/donate 
