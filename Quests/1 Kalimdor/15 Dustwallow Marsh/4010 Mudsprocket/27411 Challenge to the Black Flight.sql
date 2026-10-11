DELETE FROM `event_scripts` WHERE `id`=15406 AND `delay`=5 AND `command`=10 AND `datalong`=23789 AND `datalong2`=300000;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
	(15406, 5, 10, 23789, 300000, 0, -4713.87, -3730.99, 54.14, 0.6);
SET @X := -4690.46;
SET @Y := -3715.71;
SET @Z := 49.0209;
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
	(300153, 1, 2159, 2159, 1, 1, @X, @Y, @Z, 3.73491, 0, 0, 0.956318, -0.292327, 300, 0, 1);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
	(2378900, 1, @X, @Y, @Z, 'Smolderwing');
SET @ENTRY := 23789;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 15000, 18000, 11, 42433, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - Every 15 - 18 seconds (5 - 9s initially) - Self: Cast spell Smolderwing Fire Breath (42433) on Victim"),
	(@ENTRY, 0, 1, 2, 54, 0, 100, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - On just summoned - Self: storedTarget[0] = Summoner"),
	(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 66432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - On just summoned - Self: Set UNIT_FLAGS to NOT_ATTACKABLE_1, IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_16"),
	(@ENTRY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 0, 2378900, 0, 27411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - On just summoned - Self: Start path #2378900, walk, do not repeat, Passive"),
	(@ENTRY, 0, 4, 5, 40, 0, 100, 0, 1, 2378900, 0, 0, 12, 52977, 3, 500, 0, 0, 0, 8, 0, 0, 0, -4690.46, -3715.71, 49.0209, 3.73491, "Smolderwing - On wapoint 1 of path 2378900 reached - Self: Summon creature World Trigger (Friendly + Invis Stalker) (52977) at (-4690.46, -3715.71, 49.0209, 3.73491) as summon type timed despawn with duration 0.5 seconds"),
	(@ENTRY, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 86, 42433, 0, 1, 0, 0, 0, 9, 52977, 0, 100, 0, 0, 0, 0, "Smolderwing - On wapoint 1 of path 2378900 reached - Self: Cast spell Smolderwing Fire Breath (42433) at Creature World Trigger (Friendly + Invis Stalker) (52977) in 0 - 100 yards"),
	(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 15, 186335, 25, 0, 0, 0, 0, 0, "Smolderwing - On wapoint 1 of path 2378900 reached - Gameobject Stonemaul Banner (186335) in 25 yd: Despawn in 1 s"),
	(@ENTRY, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - On wapoint 1 of path 2378900 reached - Self: Set event phase to 1"),
	(@ENTRY, 0, 8, 9, 1, 1, 100, 0, 2000, 5000, 2000, 5000, 19, 66432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - Every 2 - 5 seconds - Self: Remove UNIT_FLAGS to NOT_ATTACKABLE_1, IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_16"),
	(@ENTRY, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - Every 2 - 5 seconds - Self: Set react state to Aggressive"),
	(@ENTRY, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - Every 2 - 5 seconds - Self: Set run"),
	(@ENTRY, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Smolderwing - Every 2 - 5 seconds - Self: Attack storedTarget[0]");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 23789 AND SourceId = 0;