INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
	(55285, 1, 1657, 5687, 1, 1, 0, 0, 10320.9, 2417.26, 1330.52, 2.45271, 300, 0, 0, 172, 0, 0, 0, 0, 0, 0);
UPDATE `npc_vendor` SET `slot`= 1 WHERE `entry`=55285 AND `item`=73838;
UPDATE `npc_vendor` SET `slot`= 2 WHERE `entry`=55285 AND `item`=73839;
UPDATE `creature_template` SET `npcflag`= 128 WHERE `entry`=55285;