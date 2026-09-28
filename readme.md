EmuCoach 7.0 free WoW emulation database fixes
==
This repository is not related by any means with the creators and/or distributors of the EmuCoach project.

There is no obligation to provide the software, the server, the emulator, nor to provide the World of Warcraft client files property of Blizzard.

Purpose
--
This is an attempt to make EmuCoach Cata repack v7 work as expected, by fixing database. As a WoW lover, was addicted to it. I stopped playing after Blizzard was acquired by Activision and will not when both are owned by Microsoft.

So I searched for a mean to revive the old times and to learn at the same time.

About emulator
--
The free emulator has a lot of  issues. Intentionaly or not, there are alot of problems that must be dealt, before the server can be considered "functional" or at least "playable". 

Requirements
--
The version 15595 of the WoW client is required (Cataclysm 4.3.4). If you have kept a backup of the game, it would do fine. If you have newer version, it won't do.

Inside WoW folder, navigate to Data/\[language\] folder and edit the file

> realmlist.wtf

Comment out the first line, like

> \#set realmlist \[some hostname\]

and add following lines

> set realmlist 127.0.0.1
> set patchlist localhost

Then you can start web server Apache (or not, it is not actualy needed), you **must** start database server SQL, since it is the heart of the server. Those two can be found inside Server folder of the emulator.

The emulator itself resides inside the Release folder. Follow the instructions that come with the software to adjust options and operate. The above lines will allow server to operate localy, where WoW client resides.

You certainly need a database editor like HeidiSQL (free) because command line editing is a no go.

How to find what
--
Mostly the fixes focus on quest lines. So the majority of the database fixes, are concentrated on fixing anything involved (npcs, game objects, dialogs, loot tables, scripts, conditions etc) for completing quest upto turn-ins.

The structure relies on the Map/Area of the issues. Issues could be:

	- (c) creature (c###/CreatureName)
	- (g) game object (g###/GameObjectName)
	- (i) item (i###/ItemName)
	- (q) quest (q###/QuestTitle AreaName|ZoneName)
	- (w) world (w###/MapName/AreaName)

Some generic issues, like flying/submerged mineral/herb nodes, portals/area triggers not working, would be stated as world fixes.
