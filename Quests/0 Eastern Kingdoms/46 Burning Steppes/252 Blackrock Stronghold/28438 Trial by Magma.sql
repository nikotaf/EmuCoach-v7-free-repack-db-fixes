DELETE FROM creature_text WHERE Entry = 48159;
INSERT INTO creature_text (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
	(48159, 0, 0, "Alright boys, we got a challenger! Time to show the general what our little captive can do!", 14, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(48159, 1, 0, "Nooo! My baby...", 12, 0, 100, 0, 1000, 0, 0, "(unknown)");
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
	(15, 12397, 0, 0, 0, 9, 0, 28266, 0, 0, 0, 0, 0, '', 'Show gossip menu 12397 option 0 when quest 28266 is taken'),	--	or
	(15, 12397, 0, 0, 1, 9, 0, 28438, 0, 0, 0, 0, 0, '', 'Show gossip menu 12397 option 0 when quest 28438 is taken');
SET @ENTRY := 48159;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 12397, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12397 selected - Self: storedTarget[0] = Gossip player"),
	(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12397 selected - Self: Close gossip"),
	(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 12397 selected - Self: Talk 0 to invoker"),
	(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 48153, 0, 50, 0, 0, 0, 0, "On gossip action 0 from menu 12397 selected - Creature Goblin Flamethrower (48153) in 0 - 50 yards: Set creature data #1 to 1"),
	(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 48156, 0, 20, 0, 0, 0, 0, "On gossip action 0 from menu 12397 selected - Creature Magma Lord Kolob (48156) in 0 - 20 yards: Set creature data #1 to 1"),
	(@ENTRY, 0, 5, 6, 38, 0, 100, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Talk 1 to invoker"),
	(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set data[1] to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
UPDATE `creature_template_addon` SET `auras`= NULL WHERE `entry`=48153;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
	(17529, 0, 46, 252, 1, 1, 0, 0, -7682.89, -1441.82, 140.936, 3.23942, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
	(17529, 0, 46, 252, 1, 1, 0, 0, -7697.42, -1459.42, 140.936, 1.61365, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
	(17529, 0, 46, 252, 1, 1, 0, 0, -7716.08, -1446.05, 140.935, 0.129246, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0),
	(17529, 0, 46, 252, 1, 1, 0, 0, -7701.9, -1427.94, 140.936, 4.77882, 300, 0, 0, 42, 0, 0, 0, 0, 0, 0);
SET @ENTRY := 48153;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 1, 63, 0, 100, 0, 0, 0, 0, 0, 17, 385, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When just created - Self: Set emote state (UNIT_NPC_EMOTESTATE) to STATE_HOLD_RIFLE (385)"),
	(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 75, 5301, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When just created - Self: Add aura Defensive State (DND) (5301)"),
	(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When just created - Self: Set UNIT_FLAGS to IMMUNE_TO_PC, IMMUNE_TO_NPC"),
	(@ENTRY, 0, 3, 4, 38, 0, 100, 0, 1, 1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set event phase to 1"),
	(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set data[1] to 0"),
	(@ENTRY, 0, 5, 6, 60, 1, 100, 1, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, "Once - Self: Set run"),
	(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 19, 17529, 10, 0, 0, 0, 0, 0, "Once - Self: Move to Closest alive creature Channel Target (17529) in 10 yards with offset (0, 0, 0, 0) (point id 0)"),
	(@ENTRY, 0, 7, 8, 60, 1, 100, 1, 5000, 5000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 9, 48156, 0, 15, -7699.41, -1445.01, 139.87, 0, "Time = 5 seconds - Self: Look at Creature Magma Lord Kolob (48156) in 0 - 15 yards"),
	(@ENTRY, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 17, 385, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Time = 5 seconds - Self: Set emote state (UNIT_NPC_EMOTESTATE) to STATE_HOLD_RIFLE (385)"),
	(@ENTRY, 0, 9, 10, 38, 0, 100, 0, 1, 2, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 2 - Self: Set event phase to 2"),
	(@ENTRY, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 2 - Self: Set data[1] to 0"),
	(@ENTRY, 0, 11, 12, 60, 2, 100, 1, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, "Once - Self: Set walk"),
	(@ENTRY, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Once - Self: Evade"),
	(@ENTRY, 0, 13, 14, 60, 2, 100, 1, 5000, 5000, 0, 0, 17, 385, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Time = 5 seconds - Self: Set emote state (UNIT_NPC_EMOTESTATE) to STATE_HOLD_RIFLE (385)"),
	(@ENTRY, 0, 14, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Time = 5 seconds - Self: Set event phase to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
SET @ENTRY := 48156;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 15000, 11, 80549, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Every 12 - 15 seconds (5 - 8s initially) - Self: Cast spell Gout of Flame (80549) on Victim"),
	(@ENTRY, 0, 1, 2, 38, 0, 100, 0, 1, 1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set event phase to 1"),
	(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set data[1] to 0"),
	(@ENTRY, 0, 3, 0, 60, 1, 100, 1, 2500, 2500, 0, 0, 19, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Time = 2.5 seconds - Self: Remove UNIT_FLAGS to IMMUNE_TO_PC"),
	(@ENTRY, 0, 4, 5, 1, 1, 100, 0, 120000, 120000, 0, 0, 18, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Time = 120 seconds - Self: Set UNIT_FLAGS to IMMUNE_TO_PC"),
	(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, 48153, 0, 50, 0, 0, 0, 0, "Time = 120 seconds - Creature Goblin Flamethrower (48153) in 0 - 50 yards: Set creature data #1 to 2"),
	(@ENTRY, 0, 6, 7, 6, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, 48153, 0, 50, 0, 0, 0, 0, "On death - Creature Goblin Flamethrower (48153) in 0 - 50 yards: Set creature data #1 to 2"),
	(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 48159, 0, 50, 0, 0, 0, 0, "On death - Creature Wyrtle Spreelthonket (48159) in 0 - 50 yards: Set creature data #1 to 1"),
	(@ENTRY, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 256, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Set UNIT_FLAGS to IMMUNE_TO_PC");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
SET @ENTRY := 48133;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set event phase to 1"),
	(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[1] set to 1 - Self: Set data[1] to 0"),
	(@ENTRY, 0, 2, 3, 60, 1, 100, 1, 2500, 2500, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Time = 2.5 seconds - Self: Talk 0 to invoker"),
	(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Time = 2.5 seconds - Self: Set event phase to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
INSERT INTO creature_text (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
	(@ENTRY, 0, 0, "Ah ha ha! Well done!", 12, 0, 100, 0, 1000, 0, 0, "(unknown)");