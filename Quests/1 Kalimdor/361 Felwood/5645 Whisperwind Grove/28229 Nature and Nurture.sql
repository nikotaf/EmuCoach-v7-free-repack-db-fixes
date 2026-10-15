INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
	(301095, 1, 361, 5645, 1, 1, 6089.22, -871.611, 411.447, 4.64761, 0, 0, 0.729633, -0.683839, 300, 0, 1),
	(301102, 1, 361, 1767, 1, 1, 6222.11, -1153.45, 383.256, 5.05762, 0, 0, 0.575146, -0.818051, 300, 0, 1);
UPDATE `gameobject_template` SET `data4`= 28229 WHERE `entry`=301102;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (89406, 0, 0, 8, 48077, 0, 0, 0, 0, 0, 0);
UPDATE `quest_template` SET `Flags`= 3276808 WHERE `Id`=28229;
UPDATE `creature_template` SET `minlevel`= 46, `maxlevel`= 48 WHERE `entry` IN (48032,48042,48044,48241);