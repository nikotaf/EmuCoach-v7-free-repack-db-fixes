SET @ENTRY := 14636;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 11, 23416, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Cast spell Pillow Fight (23416) on Victim"),
	(@ENTRY, 0, 1, 0, 0, 0, 100, 0, 4000, 4500, 14000, 16500, 11, 23417, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Every 14 - 16.5 seconds (4 - 4.5s initially) - Self: Cast spell Smother (23417) on Victim"),
	(@ENTRY, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 45, 179828, 1, 0, 0, 0, 0, 20, 179828, 50, 0, 0, 0, 0, 0, "On death - Closest gameobject Dark Iron Pillow (179828) in 50 yards: Set creature data #179828 to 1"),
	(@ENTRY, 0, 3, 4, 63, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When just created - Self: Talk 0 to invoker"),
	(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 89, 25, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When just created - Self: Move randomly in radius 25 yards");
UPDATE `gameobject_template` SET `IconName`= 'Interact' WHERE `entry`=179832;
UPDATE `gameobject_loot_template` SET `item`=62933, `ChanceOrQuestChance`=100, `lootmode`=1, `groupid`=0, `mincountOrRef`=1, `maxcount`=1 WHERE `entry`=16841;

SET @ENTRY := 179828;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 1;
UPDATE gameobject_template SET AIName="SmartGameObjectAI" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 1, 0, 0, 70, 0, 100, 0, 3, 0, 0, 0, 87, 17982800, 17982801, 17982802, 17982803, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On loot state changed to GO_JUST_DEACTIVATED - Self: Call random timed action list: 17982800, 17982801, 17982802, 17982803, 0, 0 (update always)"),
	(@ENTRY, 1, 1, 2, 38, 0, 100, 0, 179828, 1, 0, 0, 50, 179832, 1200000, 0, 0, 0, 0, 9, 14636, 0, 50, 2, 0, 0, 0, "On data[179828] set to 1 - Self: Summon gameobject 179832 at my position, moved by offset (2, 0, 0, 0) and despawn in 1200000 ms"),
	(@ENTRY, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 179828, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[179828] set to 1 - Self: Set data[179828] to 0"),
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 179828 AND SourceId = 1;

SET @ENTRY := 14635;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Despawn in 5 s"),
	(@ENTRY, 0, 1, 2, 54, 0, 50, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Talk 0 to invoker"),
	(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Call OnReset() event"),
	(@ENTRY, 0, 3, 4, 54, 0, 50, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Talk 1 to invoker"),
	(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On just summoned - Self: Call OnReset() event");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 14635 AND SourceId = 0;
DELETE FROM creature_text WHERE Entry IN (14635);
INSERT INTO creature_text (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
	(14635, 0, 0, "Our pillas! Someone has stolen our pillas", 14, 0, 33, 0, 1000, 0, 0, "(unknown)"),
	(14635, 1, 0, "We'll not let this act of madness go unpunished!", 14, 0, 33, 0, 1000, 0, 0, "(unknown)");

SET @ENTRY := 17982800;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6520.26, -1343.3, 208.7, 6.24, "After 0 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6520.26, -1343.3, 208.7, 6.24) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 4, 0, 0, 0, 25, 0, 1, 1, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6527.29, -1341.63, 208.713, 3.37, "After 0.001 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6527.29, -1341.63, 208.713, 3.37) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 8, 0, 0, 0, 25, 0, 2, 2, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6538.44, -1336.89, 208.771, 5.73, "After 0.002 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6538.44, -1336.89, 208.771, 5.73) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 12, 0, 0, 0, 25, 0, 3, 3, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6547.4, -1329.53, 208.88, 4.5, "After 0.003 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6547.4, -1329.53, 208.88, 4.5) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 17982800 AND SourceId = 9;

SET @ENTRY := 17982801;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6544.56, -1332.2, 208.826, 2.654, "After 0 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6544.56, -1332.2, 208.826, 2.654) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 4, 0, 0, 0, 25, 0, 1, 1, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6549.9, -1325.97, 208.928, 5.05, "After 0.001 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6549.9, -1325.97, 208.928, 5.05) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 8, 0, 0, 0, 25, 0, 2, 2, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6551.04, -1324.31, 208.951, 3.263, "After 0.002 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6551.04, -1324.31, 208.951, 3.263) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 12, 0, 0, 0, 25, 0, 3, 3, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6552.98, -1321.77, 208.956, 5.057, "After 0.003 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6552.98, -1321.77, 208.956, 5.057) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 17982801 AND SourceId = 9;

SET @ENTRY := 17982802;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6553.63, -1320.33, 208.959, 2.5, "After 0 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6553.63, -1320.33, 208.959, 2.5) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 4, 0, 0, 0, 25, 0, 1, 1, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6554.86, -1317.91, 208.964, 4.71, "After 0.001 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6554.86, -1317.91, 208.964, 4.71) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 8, 0, 0, 0, 25, 0, 2, 2, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6540.5, -1357.3, 209.011, 2.132, "After 0.002 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6540.5, -1357.3, 209.011, 2.132) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 12, 0, 0, 0, 25, 0, 3, 3, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6554.78, -1348.45, 208.933, 5.881, "After 0.003 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6554.78, -1348.45, 208.933, 5.881) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 17982802 AND SourceId = 9;

SET @ENTRY := 17982803;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6558.82, -1345.18, 208.863, 6.042, "After 0 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6558.82, -1345.18, 208.863, 6.042) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 4, 0, 0, 0, 25, 0, 1, 1, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6572.07, -1324.96, 208.715, 1.824, "After 0.001 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6572.07, -1324.96, 208.715, 1.824) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 8, 0, 0, 0, 25, 0, 2, 2, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6574.04, -1321.05, 208.658, 1.314, "After 0.002 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6574.04, -1321.05, 208.658, 1.314) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event"),
	(@ENTRY, 9, 12, 0, 0, 0, 25, 0, 3, 3, 0, 0, 12, 14635, 1, 300000, 0, 0, 0, 8, 0, 0, 0, -6575.6, -1316.02, 208.59, 0.33, "After 0.003 seconds - Self: Summon creature Sleepy Dark Iron Worker (14635) at (-6575.6, -1316.02, 208.59, 0.33) as summon type timed or dead despawn with duration 300 seconds"),
	(@ENTRY, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 14635, 50, 0, 0, 0, 0, 0, "After 0 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 89, 10, 0, 0, 0, 0, 0, 1, 14635, 0, 50, 0, 0, 0, 0, "After 0 seconds - Self: Move randomly in radius 10 yards"),
	(@ENTRY, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Call OnReset() event");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 17982803 AND SourceId = 9;

DELETE FROM `creature` WHERE `guid`=196734 AND `id`=14626;
SET @ENTRY := 14626;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 20, 0, 100, 0, 28057, 0, 0, 0, 12, 14636, 6, 1200000, 0, 0, 0, 8, 0, 0, 0, -6539.46, -1348.32, 208.914, 3.3, "On player rewarded quest 28057 - Self: Summon creature Chambermaid Pillaclencher (14636) at (-6539.46, -1348.32, 208.914, 3.3) as summon type corpse timed despawn with duration 1200 seconds");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 14626 AND SourceId = 0;