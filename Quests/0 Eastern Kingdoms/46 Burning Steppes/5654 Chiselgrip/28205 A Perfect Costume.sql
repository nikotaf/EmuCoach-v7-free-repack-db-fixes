INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
	(12371, 17382),
	(12371, 17383),
	(12372, 17384),
	(12373, 17385),
	(12374, 17386),
	(12375, 17387);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
	(12371, 0, 0, 'Investigate the hides.', 1, 1, 12372),
	(12372, 0, 0, 'Take one hide.', 1, 1, 12373),
	(12372, 1, 0, 'Take two hides.', 1, 1, 12373),
	(12372, 2, 0, 'Take three hides.', 1, 1, 12373),
	(12372, 3, 0, 'Take four hides.', 1, 1, 12373),
	(12373, 0, 0, 'Take one handful of mud.', 1, 1, 12374),
	(12373, 1, 0, 'Take two handfuls of mud.', 1, 1, 12374),
	(12373, 2, 0, 'Take three handfuls of mud.', 1, 1, 12374),
	(12373, 3, 0, 'Take four handfuls of mud.', 1, 1, 12374),
	(12374, 0, 0, 'Take one spool of thread.', 1, 1, 12375),
	(12374, 1, 0, 'Take two spools of thread.', 1, 1, 12375),
	(12374, 2, 0, 'Take three spools of thread.', 1, 1, 12375),
	(12374, 3, 0, 'Take four spools of thread.', 1, 1, 12375);
INSERT INTO `npc_text` (`ID`, `text0_0`, `WDBVerified`) VALUES
	(17382, 'There is nothing of interest on the table.', 14545),
	(17383, 'Several piles of supplies rest on the table.  You decide to start with the worg hides.', 14545),
	(17384, 'You see the stack of worg hides that you collected earlier.  These will be used for the bulk of your costume.', 14545),
	(17385, 'Looking over, you see the obsidian-flecked mud that you collected from the lava beds.  This will be used to color your disguise.', 14545),
	(17386, 'Finally, you see some thread, which will be used to hold the disguise together.', 14545),
	(17387, 'You have gathered your supplies.  Bring them to Thelaron Direneedle to assemble.', 14545);
SET @RACE:=1|4;
SET @QUEST:=28202;
SET @ORELSE:=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is human/dwarf'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28202 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28202 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28202 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is human/dwarf'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28202 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28202 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28202 is completed');
SET @RACE:=1024|2097152;
SET @QUEST:=28203;
SET @ORELSE:=3;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is draenei/worgen'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28203 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28203 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28203 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is draenei/worgen'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28203 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28203 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28203 is completed');
SET @RACE:=64;
SET @QUEST:=28204;
SET @ORELSE:=6;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is gnome'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28204 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28204 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28204 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is gnome'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28204 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28204 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28204 is completed');
SET @RACE:=8;
SET @QUEST:=28205;
SET @ORELSE:=9;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is night elf'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28205 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28205 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28205 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is night elf'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28205 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28205 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28205 is completed');
SET @RACE:=2|16;
SET @QUEST:=28428;
SET @ORELSE:=12;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is orc/undead'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28428 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28428 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28428 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is orc/undead'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28428 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28428 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28428 is completed');
SET @RACE:=32;
SET @QUEST:=28429;
SET @ORELSE:=15;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is tauren'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28429 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28429 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28429 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is tauren'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28429 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28429 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28429 is completed');
SET @RACE:=256;
SET @QUEST:=28430;
SET @ORELSE:=18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is goblin'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28430 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28430 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28430 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is goblin'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28430 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28430 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28430 is completed');
SET @RACE:=128|512;
SET @QUEST:=28431;
SET @ORELSE:=21;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(14, 12371, 17383, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when race is troll/blood elf'),	--	and
	(14, 12371, 17383, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28431 is taken'),	--	or
	(14, 12371, 17383, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28431 is rewarded'),	--	or
	(14, 12371, 17383, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip combo 12371/17383 when quest 28431 is completed'),
	(15, 12371, 0, 0, @ORELSE, 16, 0, @RACE, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when race is troll/blood elf'),	--	and
	(15, 12371, 0, 0, @ORELSE, 8, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28431 is taken'),	--	or
	(15, 12371, 0, 0, @ORELSE+1, 9, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28431 is rewarded'),	--	or
	(15, 12371, 0, 0, @ORELSE+2, 28, 0, @QUEST, 0, 0, 0, 0, 0, '', 'Show gossip 12371 option 0 when quest 28431 is completed');
UPDATE `creature_template` SET `gossip_menu_id`= 12376 WHERE `entry`=48001;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
	(12376, 17394),
	(12377, 17395),
	(12377, 17396);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`) VALUES
	(12377, 0, 0, 'I brought you some hides, mud and thread', 1, 1, 0);
INSERT INTO `npc_text` (`ID`, `text0_0`, `WDBVerified`) VALUES
	(17394, 'Ye\'ll not find a finer craftsman than I in all the Dark Irons!$b$bHammerin\', smithin\', and diggin\' be damned!  A needle and a thimble\'s all the metal I need!', 15595),
	(17395, 'What have ye brought me?', 14545);
SET @ENTRY := 48001;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 63, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Self: Reset smart script variable_1"),
	(@ENTRY, 0, 1, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 2, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 3, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 4, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 5, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 6, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 7, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 8, 0, 64, 0, 100, 0, 0, 0, 0, 0, 98, 12377, 17395, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Send gossip ID 12377 with text What have ye brought me? (17395)"),
	(@ENTRY, 0, 9, 10, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 1"),
	(@ENTRY, 0, 11, 12, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 1"),
	(@ENTRY, 0, 13, 14, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 14, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 3"),
	(@ENTRY, 0, 15, 16, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 2"),
	(@ENTRY, 0, 17, 18, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 18, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 1"),
	(@ENTRY, 0, 19, 20, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 20, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 5"),
	(@ENTRY, 0, 21, 22, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 22, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 4"),
	(@ENTRY, 0, 23, 24, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 24, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 2"),
	(@ENTRY, 0, 25, 26, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 26, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 4"),
	(@ENTRY, 0, 27, 28, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 28, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 2"),
	(@ENTRY, 0, 29, 30, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 30, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 5"),
	(@ENTRY, 0, 31, 32, 62, 0, 100, 0, 12377, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 32, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 5"),
	(@ENTRY, 0, 33, 34, 62, 31, 100, 0, 12377, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Talk 0 to storedTarget[0]"),
	(@ENTRY, 0, 34, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 6"),
	(@ENTRY, 0, 35, 36, 62, 31, 100, 0, 12377, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Talk 1 to storedTarget[0]"),
	(@ENTRY, 0, 36, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 6"),
	(@ENTRY, 0, 37, 38, 62, 31, 100, 0, 12377, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Talk 2 to storedTarget[0]"),
	(@ENTRY, 0, 38, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 6"),
	(@ENTRY, 0, 39, 40, 62, 31, 100, 0, 12377, 0, 0, 0, 1, 3, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Talk 3 to storedTarget[0]"),
	(@ENTRY, 0, 40, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set event phase to 6"),
	(@ENTRY, 0, 41, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[1] to 1"),
	(@ENTRY, 0, 42, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[1] to 2"),
	(@ENTRY, 0, 43, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[1] to 3"),
	(@ENTRY, 0, 44, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 1, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[1] to 4"),
	(@ENTRY, 0, 45, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[2] to 1"),
	(@ENTRY, 0, 46, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 2, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[2] to 2"),
	(@ENTRY, 0, 47, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 2, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[2] to 3"),
	(@ENTRY, 0, 48, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 2, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[2] to 4"),
	(@ENTRY, 0, 49, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 3, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[3] to 1"),
	(@ENTRY, 0, 50, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 3, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[3] to 2"),
	(@ENTRY, 0, 51, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 3, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[3] to 3"),
	(@ENTRY, 0, 52, 0, 62, 31, 100, 0, 12377, 0, 0, 0, 45, 3, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12377 selected - Self: Set data[3] to 4"),
	(@ENTRY, 0, 53, 54, 77, 31, 100, 0, 1, 3, 0, 0, 1, 10, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On counter 1 set to 3 - Self: Talk 10 to storedTarget[0]"),
	(@ENTRY, 0, 54, 55, 61, 0, 100, 0, 0, 0, 0, 0, 33, 47910, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On counter 1 set to 3 - storedTarget[0]: Give kill credit Costume Credit (47910)"),
	(@ENTRY, 0, 55, 56, 61, 0, 100, 0, 0, 0, 0, 0, 56, 63357, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On counter 1 set to 3 - storedTarget[0]: Add item Blackrock Disguise (63357)"),
	(@ENTRY, 0, 56, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On counter 1 set to 3 - Self: Set event phase to 6"),
	(@ENTRY, 0, 57, 58, 38, 23, 100, 1, 1, 1, 0, 0, 1, 4, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Talk 4 to storedTarget[0]"),
	(@ENTRY, 0, 58, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set event phase to 6"),
	(@ENTRY, 0, 59, 0, 38, 8, 100, 1, 1, 1, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 60, 61, 38, 22, 100, 1, 1, 2, 0, 0, 1, 4, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 2 - Self: Talk 4 to storedTarget[0]"),
	(@ENTRY, 0, 61, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 2 - Self: Set event phase to 6"),
	(@ENTRY, 0, 62, 0, 38, 1, 100, 1, 1, 2, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 2 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 63, 64, 38, 8, 100, 1, 1, 2, 0, 0, 1, 5, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 2 - Self: Talk 5 to storedTarget[0]"),
	(@ENTRY, 0, 64, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 2 - Self: Set event phase to 6"),
	(@ENTRY, 0, 65, 66, 38, 16, 100, 1, 1, 3, 0, 0, 1, 4, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 3 - Self: Talk 4 to storedTarget[0]"),
	(@ENTRY, 0, 66, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 3 - Self: Set event phase to 6"),
	(@ENTRY, 0, 67, 0, 38, 2, 100, 1, 1, 3, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 3 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 68, 69, 38, 13, 100, 1, 1, 3, 0, 0, 1, 5, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 3 - Self: Talk 5 to storedTarget[0]"),
	(@ENTRY, 0, 69, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 3 - Self: Set event phase to 6"),
	(@ENTRY, 0, 70, 0, 38, 20, 100, 1, 1, 4, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 4 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 71, 72, 38, 11, 100, 1, 1, 4, 0, 0, 1, 5, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 4 - Self: Talk 5 to storedTarget[0]"),
	(@ENTRY, 0, 72, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 4 - Self: Set event phase to 6"),
	(@ENTRY, 0, 73, 74, 38, 15, 100, 1, 2, 1, 0, 0, 1, 6, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 1 - Self: Talk 6 to storedTarget[0]"),
	(@ENTRY, 0, 74, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 1 - Self: Set event phase to 6"),
	(@ENTRY, 0, 75, 0, 38, 16, 100, 1, 2, 1, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 1 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 76, 77, 38, 9, 100, 1, 2, 2, 0, 0, 1, 6, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 2 - Self: Talk 6 to storedTarget[0]"),
	(@ENTRY, 0, 77, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 2 - Self: Set event phase to 6"),
	(@ENTRY, 0, 78, 0, 38, 6, 100, 1, 2, 2, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 2 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 79, 80, 38, 16, 100, 1, 2, 2, 0, 0, 1, 7, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 2 - Self: Talk 7 to storedTarget[0]"),
	(@ENTRY, 0, 80, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 2 - Self: Set event phase to 6"),
	(@ENTRY, 0, 81, 82, 38, 1, 100, 1, 2, 3, 0, 0, 1, 6, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 3 - Self: Talk 6 to storedTarget[0]"),
	(@ENTRY, 0, 82, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 3 - Self: Set event phase to 6"),
	(@ENTRY, 0, 83, 0, 38, 8, 100, 1, 2, 3, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 3 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 84, 85, 38, 22, 100, 1, 2, 3, 0, 0, 1, 7, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 3 - Self: Talk 7 to storedTarget[0]"),
	(@ENTRY, 0, 85, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 3 - Self: Set event phase to 6"),
	(@ENTRY, 0, 86, 0, 38, 1, 100, 1, 2, 4, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 4 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 87, 88, 38, 30, 100, 1, 2, 4, 0, 0, 1, 7, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 4 - Self: Talk 7 to storedTarget[0]"),
	(@ENTRY, 0, 88, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[2] set to 4 - Self: Set event phase to 6"),
	(@ENTRY, 0, 89, 90, 38, 29, 100, 1, 3, 1, 0, 0, 1, 8, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 1 - Self: Talk 8 to storedTarget[0]"),
	(@ENTRY, 0, 90, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 1 - Self: Set event phase to 6"),
	(@ENTRY, 0, 91, 0, 38, 2, 100, 1, 3, 1, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 1 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 92, 93, 38, 24, 100, 1, 3, 2, 0, 0, 1, 8, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 2 - Self: Talk 8 to storedTarget[0]"),
	(@ENTRY, 0, 93, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 2 - Self: Set event phase to 6"),
	(@ENTRY, 0, 94, 0, 38, 5, 100, 1, 3, 2, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 2 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 95, 96, 38, 2, 100, 1, 3, 2, 0, 0, 1, 9, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 2 - Self: Talk 9 to storedTarget[0]"),
	(@ENTRY, 0, 96, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 2 - Self: Set event phase to 6"),
	(@ENTRY, 0, 97, 98, 38, 8, 100, 1, 3, 3, 0, 0, 1, 8, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 3 - Self: Talk 8 to storedTarget[0]"),
	(@ENTRY, 0, 98, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 3 - Self: Set event phase to 6"),
	(@ENTRY, 0, 99, 0, 38, 16, 100, 1, 3, 3, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 3 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 100, 101, 38, 7, 100, 1, 3, 3, 0, 0, 1, 9, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 3 - Self: Talk 9 to storedTarget[0]"),
	(@ENTRY, 0, 101, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 3 - Self: Set event phase to 6"),
	(@ENTRY, 0, 102, 0, 38, 8, 100, 1, 3, 4, 0, 0, 63, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 4 - Self: Smart script variable_1 = 1"),
	(@ENTRY, 0, 103, 104, 38, 23, 100, 1, 3, 4, 0, 0, 1, 9, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 4 - Self: Talk 9 to storedTarget[0]"),
	(@ENTRY, 0, 104, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[3] set to 4 - Self: Set event phase to 6"),
	(@ENTRY, 0, 105, 106, 60, 32, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Close gossip"),
	(@ENTRY, 0, 106, 107, 61, 0, 100, 0, 0, 0, 0, 0, 28, 59690, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Well Fed (DND) (59690)"),
	(@ENTRY, 0, 107, 108, 61, 0, 100, 0, 0, 0, 0, 0, 28, 59699, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Well Fed (DND) (59699)"),
	(@ENTRY, 0, 108, 109, 61, 0, 100, 0, 0, 0, 0, 0, 28, 66624, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Well Fed (DND) (66624)"),
	(@ENTRY, 0, 109, 110, 61, 0, 100, 0, 0, 0, 0, 0, 28, 75442, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Well Fed (DND) (75442)"),
	(@ENTRY, 0, 110, 111, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34304, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Damage Immunity: Arcane (34304)"),
	(@ENTRY, 0, 111, 112, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34305, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Damage Immunity: Fire (34305)"),
	(@ENTRY, 0, 112, 113, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34306, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Damage Immunity: Frost (34306)"),
	(@ENTRY, 0, 113, 114, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34307, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Damage Immunity: Holy (34307)"),
	(@ENTRY, 0, 114, 115, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34308, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Damage Immunity: Nature (34308)"),
	(@ENTRY, 0, 115, 116, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34309, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Damage Immunity: Shadow (34309)"),
	(@ENTRY, 0, 116, 117, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34310, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Immunity: Physical (34310)"),
	(@ENTRY, 0, 117, 118, 61, 0, 100, 0, 0, 0, 0, 0, 28, 34311, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Once - storedTarget[0]: Remove aura due to spell Damage Immunity: Physical (34311)"),
	(@ENTRY, 0, 118, 119, 61, 0, 100, 0, 0, 0, 0, 0, 63, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Once - Self: Reset smart script variable_1"),
	(@ENTRY, 0, 119, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Once - Self: Set event phase to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
	(22, 2, @ENTRY, 0, 0, 9, 0, 28202, 0, 0, 0, "Action invoker has quest 28202 active"),
	(22, 2, @ENTRY, 0, 1, 8, 0, 28202, 0, 0, 0, "Action invoker has quest 28202 rewarded"),
	(22, 3, @ENTRY, 0, 0, 9, 0, 28203, 0, 0, 0, "Action invoker has quest 28203 active"),
	(22, 3, @ENTRY, 0, 1, 8, 0, 28203, 0, 0, 0, "Action invoker has quest 28203 rewarded"),
	(22, 4, @ENTRY, 0, 0, 9, 0, 28204, 0, 0, 0, "Action invoker has quest 28204 active"),
	(22, 4, @ENTRY, 0, 1, 8, 0, 28204, 0, 0, 0, "Action invoker has quest 28204 rewarded"),
	(22, 5, @ENTRY, 0, 0, 9, 0, 28205, 0, 0, 0, "Action invoker has quest 28205 active"),
	(22, 5, @ENTRY, 0, 1, 8, 0, 28205, 0, 0, 0, "Action invoker has quest 28205 rewarded"),
	(22, 6, @ENTRY, 0, 0, 9, 0, 28428, 0, 0, 0, "Action invoker has quest 28428 active"),
	(22, 6, @ENTRY, 0, 1, 8, 0, 28428, 0, 0, 0, "Action invoker has quest 28428 rewarded"),
	(22, 7, @ENTRY, 0, 0, 9, 0, 28429, 0, 0, 0, "Action invoker has quest 28429 active"),
	(22, 7, @ENTRY, 0, 1, 8, 0, 28429, 0, 0, 0, "Action invoker has quest 28429 rewarded"),
	(22, 8, @ENTRY, 0, 0, 9, 0, 28430, 0, 0, 0, "Action invoker has quest 28430 active"),
	(22, 8, @ENTRY, 0, 1, 8, 0, 28430, 0, 0, 0, "Action invoker has quest 28430 rewarded"),
	(22, 9, @ENTRY, 0, 0, 9, 0, 28431, 0, 0, 0, "Action invoker has quest 28431 active"),
	(22, 9, @ENTRY, 0, 1, 8, 0, 28431, 0, 0, 0, "Action invoker has quest 28431 rewarded"),
	(22, 10, @ENTRY, 0, 0, 16, 0, 1, 0, 0, 0, "Action invoker is race Human (1)"),
	(22, 12, @ENTRY, 0, 0, 16, 0, 2, 0, 0, 0, "Action invoker is race Orc (2)"),
	(22, 14, @ENTRY, 0, 0, 16, 0, 4, 0, 0, 0, "Action invoker is race Night Elf (4)"),
	(22, 16, @ENTRY, 0, 0, 16, 0, 8, 0, 0, 0, "Action invoker is race Troll (8)"),
	(22, 18, @ENTRY, 0, 0, 16, 0, 16, 0, 0, 0, "Action invoker is race Vrykul (16)"),
	(22, 20, @ENTRY, 0, 0, 16, 0, 32, 0, 0, 0, "Action invoker is race 32"),
	(22, 22, @ENTRY, 0, 0, 16, 0, 64, 0, 0, 0, "Action invoker is race 64"),
	(22, 24, @ENTRY, 0, 0, 16, 0, 128, 0, 0, 0, "Action invoker is race 128"),
	(22, 26, @ENTRY, 0, 0, 16, 0, 256, 0, 0, 0, "Action invoker is race 256"),
	(22, 28, @ENTRY, 0, 0, 16, 0, 512, 0, 0, 0, "Action invoker is race 512"),
	(22, 30, @ENTRY, 0, 0, 16, 0, 1024, 0, 0, 0, "Action invoker is race 1024"),
	(22, 32, @ENTRY, 0, 0, 16, 0, 2098176, 0, 0, 0, "Action invoker is race 2098176"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 59690, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (59690), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 59699, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (59699), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 66624, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (66624), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 75442, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (75442), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34304, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Arcane (34304), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34305, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Fire (34305), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34306, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Frost (34306), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34307, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Holy (34307), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34308, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Nature (34308), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34309, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Shadow (34309), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34310, 0, 0, 1, "Action invoker has not aura of spell Immunity: Physical (34310), effect EFFECT_0"),
	(22, 34, @ENTRY, 0, 0, 1, 0, 34311, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Physical (34311), effect EFFECT_0"),
	(22, 36, @ENTRY, 0, 0, 1, 0, 59690, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (59690), effect EFFECT_0"),
	(22, 36, @ENTRY, 0, 0, 1, 0, 59699, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (59699), effect EFFECT_0"),
	(22, 36, @ENTRY, 0, 0, 1, 0, 66624, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (66624), effect EFFECT_0"),
	(22, 36, @ENTRY, 0, 0, 1, 0, 75442, 0, 0, 1, "Action invoker has not aura of spell Well Fed (DND) (75442), effect EFFECT_0"),
	(22, 38, @ENTRY, 0, 0, 1, 0, 34304, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Arcane (34304), effect EFFECT_0"),
	(22, 38, @ENTRY, 0, 0, 1, 0, 34305, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Fire (34305), effect EFFECT_0"),
	(22, 38, @ENTRY, 0, 0, 1, 0, 34306, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Frost (34306), effect EFFECT_0"),
	(22, 38, @ENTRY, 0, 0, 1, 0, 34307, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Holy (34307), effect EFFECT_0"),
	(22, 40, @ENTRY, 0, 0, 1, 0, 34308, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Nature (34308), effect EFFECT_0"),
	(22, 40, @ENTRY, 0, 0, 1, 0, 34309, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Shadow (34309), effect EFFECT_0"),
	(22, 40, @ENTRY, 0, 0, 1, 0, 34310, 0, 0, 1, "Action invoker has not aura of spell Immunity: Physical (34310), effect EFFECT_0"),
	(22, 40, @ENTRY, 0, 0, 1, 0, 34311, 0, 0, 1, "Action invoker has not aura of spell Damage Immunity: Physical (34311), effect EFFECT_0"),
	(22, 42, @ENTRY, 0, 0, 1, 0, 59690, 0, 0, 0, "Action invoker has aura of spell Well Fed (DND) (59690), effect EFFECT_0"),
	(22, 43, @ENTRY, 0, 0, 1, 0, 59699, 0, 0, 0, "Action invoker has aura of spell Well Fed (DND) (59699), effect EFFECT_0"),
	(22, 44, @ENTRY, 0, 0, 1, 0, 66624, 0, 0, 0, "Action invoker has aura of spell Well Fed (DND) (66624), effect EFFECT_0"),
	(22, 45, @ENTRY, 0, 0, 1, 0, 75442, 0, 0, 0, "Action invoker has aura of spell Well Fed (DND) (75442), effect EFFECT_0"),
	(22, 46, @ENTRY, 0, 0, 1, 0, 34304, 0, 0, 0, "Action invoker has aura of spell Damage Immunity: Arcane (34304), effect EFFECT_0"),
	(22, 47, @ENTRY, 0, 0, 1, 0, 34305, 0, 0, 0, "Action invoker has aura of spell Damage Immunity: Fire (34305), effect EFFECT_0"),
	(22, 48, @ENTRY, 0, 0, 1, 0, 34306, 0, 0, 0, "Action invoker has aura of spell Damage Immunity: Frost (34306), effect EFFECT_0"),
	(22, 49, @ENTRY, 0, 0, 1, 0, 34307, 0, 0, 0, "Action invoker has aura of spell Damage Immunity: Holy (34307), effect EFFECT_0"),
	(22, 50, @ENTRY, 0, 0, 1, 0, 34308, 0, 0, 0, "Action invoker has aura of spell Damage Immunity: Nature (34308), effect EFFECT_0"),
	(22, 51, @ENTRY, 0, 0, 1, 0, 34309, 0, 0, 0, "Action invoker has aura of spell Damage Immunity: Shadow (34309), effect EFFECT_0"),
	(22, 52, @ENTRY, 0, 0, 1, 0, 34310, 0, 0, 0, "Action invoker has aura of spell Immunity: Physical (34310), effect EFFECT_0"),
	(22, 53, @ENTRY, 0, 0, 1, 0, 34311, 0, 0, 0, "Action invoker has aura of spell Damage Immunity: Physical (34311), effect EFFECT_0");
DELETE FROM creature_text WHERE Entry = @ENTRY;
INSERT INTO creature_text (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
	(@ENTRY, 0, 0, "You didn't get any materials $n.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 1, 0, "You gotta bring me some hides $gboy:gal;.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 2, 0, "You forgot to get handfulls of mud  $glad:lass;.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 3, 0, "I don't see it happening without threads $c.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 4, 0, "Not enough hides $glad:lass;.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 4, 1, "Consider putting more hides $n.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 4, 2, "You need to get a bit more hides $n.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 5, 0, "You have to remove some hides $n.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 5, 1, "Too many hides $glad:lass;, remove some.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 5, 2, "What I'm suppossed to do with the extra hides $n?", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 6, 0, "Don't judge me wrong $gbro:siss;, but the mud is not enough.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 6, 1, "Not enough mud $n.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 6, 2, "You could bring some more mud $c.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 7, 0, "Too much mud $n.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 7, 1, "This isn't a playground to play with mud $n.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 7, 2, "Take some mud back there $c and come with proper matterials.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 8, 0, "Thread! More thread $c...", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 8, 1, "Judging by you size $n, you need more thread.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 8, 2, "These spools of thread seem too few.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 9, 0, "Easy with the spools of thread $gtiger:tigress;.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 9, 1, "I don't know what to do with the extra spools of thread you brought me.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 9, 2, "Don't be wastin' thread. Use less thread.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 10, 0, "This... this is perfect! This disguise shall be my masterpiece!", 12, 0, 100, 11, 1000, 0, 0, "(unknown)");
DELETE FROM spell_area WHERE area = 5654;
INSERT INTO spell_area (`area`, `spell`, `quest_start`, `quest_start_status`, `quest_end`, `quest_end_status`, `autocast`, `aura_spell`, `racemask`, `gender`) VALUES
	(5654, 34311, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 34310, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 34309, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 34308, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 34307, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 34306, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 34305, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 34304, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 75442, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 66624, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 59699, 0, 0, 0, 0, 0, 0, 0, 2),
	(5654, 59690, 0, 0, 0, 0, 0, 0, 0, 2);