UPDATE `creature_template` SET `faction_A`= 1883, `faction_H`= 1883 WHERE `entry`=5089;
SET @ENTRY := 5089;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - On reset - Self: Set invincibility to 1 HP"),
	(@ENTRY, 0, 1, 2, 2, 0, 100, 1, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - When health between 0%-15%% (check once) - Self: Talk 0 to invoker"),
	(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - When health between 0%-15%% (check once) - Self: Set event phase to 1"),
	(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - When health between 0%-15%% (check once) - Self: Evade"),
	(@ENTRY, 0, 4, 5, 1, 1, 100, 0, 250, 500, 750, 1000, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - Every 0.75 - 1 seconds (0.25 - 0.5s initially) - Self: Set faction to Friendly (35)"),
	(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - Every 0.75 - 1 seconds (0.25 - 0.5s initially) - Self: Set event phase to 2"),
	(@ENTRY, 0, 6, 7, 60, 2, 100, 0, 60000, 60000, 60000, 60000, 2, 1883, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - Every 60 seconds - Self: Set faction to Theramore Deserter (1883)"),
	(@ENTRY, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Balos Jacken - Every 60 seconds - Self: Set event phase to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;