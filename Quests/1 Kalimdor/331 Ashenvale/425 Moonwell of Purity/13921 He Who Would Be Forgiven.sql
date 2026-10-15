INSERT INTO `creature` (`guid`, `id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
	(71749, 34358, 1, 331, 4705, 1, 1, 0, 0, 2368.18, -1705.85, 152.961, 6.21337, 90, 0, 0, 562, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
	(34358, 0, 0, 0, 257, 0, '65317');
DELETE FROM spell_area WHERE area = 4705;
INSERT INTO spell_area (`area`, `spell`, `quest_start`, `quest_start_status`, `quest_end`, `quest_end_status`, `autocast`, `aura_spell`, `racemask`, `gender`) VALUES
	(4705, 65315, 13919, 64, 13922, 11, 1, 0, 2098253, 2),
	(4705, 65314, 13922, 64, 0, 0, 1, 0, 2098253, 2);