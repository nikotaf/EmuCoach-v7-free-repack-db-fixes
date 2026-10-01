EmuCoach 7.0 free WoW emulation database fixes
=
Purpose
-
This is an attempt to make EmuCoach Cata repack v7 work as expected, by fixing database. As a WoW lover, was addicted to it. I stopped playing after Blizzard was acquired by Activision and will not when both are owned by Microsoft.

So I searched for a mean to revive the old times and to learn at the same time.

About emulator
-
The free emulator has a lot of  issues. Intentionally or not, there are alot of problems that must be dealt, before the server can be considered "functional" or at least "playable". 

Requirements
-
The version 15595 of the WoW client is required (Cataclysm 4.3.4). If you have kept a backup of the game, it would do fine. If you have newer version, it won't do.

Inside WoW folder, navigate to Data/\[language\] folder and edit the file
```
realmlist.wtf
```
Comment out the first line, like
```
#set realmlist [some hostname]
```
and add following lines
```
set realmlist 127.0.0.1
set patchlist localhost
```
Then you can start web server Apache (or not, it is not actually needed), you **must** start database server SQL, since it is the heart of the server. Those two, can be found inside Server folder of the emulator.

The emulator itself resides inside the Release folder. Follow the instructions that come with the software to adjust options and operate. The above lines will allow server to operate localy, where WoW client resides.

You certainly need a database editor like HeidiSQL (free) because command line editing is a no go.

How to find what
-
Mostly the fixes focus on quest lines. So the majority of the database fixes, are concentrated on fixing anything involved (npcs, game objects, dialogues, loot tables, scripts, conditions etc) for completing quest up to turn-ins.

The structure relies on the Map/Zone/Area of the issues. For instance, for quests the folder structure is:
```
🗁MapId MapName
 ┗🗁ZoneId AreaName
   ┗🗁AreaId ZoneName
     ┗ 🗎QuestId Quest title.sql
```
and denotes the location of the quest giver.

Some generic issues, like flying/submerged mineral/herb nodes, portals/area triggers not working, npcs missing, loot table issues, would be stated as world fixes:
```
🗁MapId MapName
 ┗🗁ZoneId AreaName
   ┗🗁AreaId ZoneName
     ┗ 🗎c|g|i|arc|at#entry Name.sql
```
Known server issues
-
The aforementioned server, has lots of issues, that are core relevant, intentionally or bad coded:

- Area triggers are missing or not triggering:
	+ **at**288 Uldaman front exit
	+ **at**503 Stockades Instance exit
	+ **at**882 Uldaman back exit
	+ **at**1472 Blackrock Depths exit
	+ **at**6522 Maw of the Void

- Spell summoned game object by npc's death are not interactable
	+ **q**12855 Sniffing Out the Perpetrator
	+ **q**28058 Look at the Size of It!
	+ **q**26925|**q**27164 Araj the Summoner

Disclaimer
-
I will not hold any responsibility for any loss or damage you do with the files provided here.

It's up to you to analyze them, and backup your database, so you can rollback to whatever you had. If you can not do that, you are advised to ask for help, or educate yourself.

This repository is not related by any means with the creators and/or distributors of the EmuCoach project.

There is no obligation to provide the software, the server, the emulator, nor to provide the World of Warcraft client files property of Blizzard (back then).