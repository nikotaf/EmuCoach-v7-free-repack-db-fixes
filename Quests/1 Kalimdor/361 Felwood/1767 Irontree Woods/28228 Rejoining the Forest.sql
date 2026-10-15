UPDATE `quest_template` SET `Flags`= 2883588, `SpecialFlags`= 2 WHERE `Id`=28228;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (48044, 28228);
SET @ENTRY := 48044;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 1, 20, 0, 100, 0, 28228, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On player rewarded quest 28228 - Self: storedTarget[0] = Rewarded player"),
	(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On player rewarded quest 28228 - Self: Set walk"),
	(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 19, 16777216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On player rewarded quest 28228 - Self: Remove UNIT_FLAGS to PLAYER_CONTROLLED"),
	(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33620737, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On player rewarded quest 28228 - Self: Set UNIT_FLAGS to SERVER_CONTROLLED, IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_16, NOT_SELECTABLE"),
	(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 9, 48077, 0, 20, 0, 0, 0, 3, "On player rewarded quest 28228 - Self: Move to Creature Irontree Woods Island (48077) in 0 - 20 yards with offset (0, 0, 0, 3) (point id 0)"),
	(@ENTRY, 0, 5, 6, 34, 0, 100, 0, 8, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On movement of type POINT_MOTION_TYPE inform - Self: Look at storedTarget[0]"),
	(@ENTRY, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On movement of type POINT_MOTION_TYPE inform - Self: Set data[0] to 1"),
	(@ENTRY, 0, 7, 8, 38, 0, 100, 0, 0, 1, 0, 0, 11, 62923, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Cast spell Cosmetic - Entangling Roots Visual (62923) on Self"),
	(@ENTRY, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 5, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Play emote ONESHOT_ROAR(DNR) (15)"),
	(@ENTRY, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 13000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Despawn in 13 s");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
DELETE FROM creature_text WHERE Entry IN (@ENTRY);
INSERT INTO creature_text (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
	(@ENTRY, 0, 0, "Yes, this is the spot.", 12, 0, 100, 0, 1000, 0, 0, "(unknown)"),
	(@ENTRY, 0, 1, "Farewell, $n...", 12, 0, 100, 0, 1000, 0, 0, "(unknown)");