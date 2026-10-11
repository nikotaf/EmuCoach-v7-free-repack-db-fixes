INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
	(300151, 1, 15, 15, 1, 1, -3532.04, -4317.98, 6.86363, 2.75761, 0, 0, 0.981626, 0.190814, 300, 0, 1);
DELETE FROM `event_scripts` WHERE `id`=15385 AND `datalong` IN (23768,23769);
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
	(15385, 3, 10, 23768, 180000, 0, -3532.56, -4316.76, 7.04, 2.98),
	(15385, 3, 10, 23769, 180000, 0, -3533.17, -4318.34, 7.05, 2.51);