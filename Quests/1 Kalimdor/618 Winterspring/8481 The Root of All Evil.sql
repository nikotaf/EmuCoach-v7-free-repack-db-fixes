INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (300141, 1, 618, 2244, 1, 1, 6716.95, -5244.51, 779.291, 4.99053, 0, 0, 0.602261, -0.798299, 300, 0, 1);
DELETE FROM `event_scripts` WHERE `id`=9571 AND `command`=10 AND `datalong`=15623;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
	(9571, 0, 10, 15623, 300000, 0, 6720.453, -5256.778, 778, 1.82);
DELETE FROM `creature_loot_template` WHERE `entry`=15623 AND `item`=21145;
DELETE FROM `gameobject` WHERE `guid` IN (255051,256801) AND `id`=180671;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(15623, 0, 6, 7, 6, 0, 100, 0, 0, 0, 0, 0, 11, 25791, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Cast spell Xandivious Demon Bag (25791) on Killer (flags: triggered)"),
	(15623, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On death - Self: Despawn in 5 s");