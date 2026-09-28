UPDATE `gameobject_template` SET `displayId`=7340, `size`=1, `questItem6`=0, `WDBVerified`=15595 WHERE `entry`=9;
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
	(9, 0, 51, 1442, 1, 1, -6627.8, -835.451, 244.294, 3.99874, 0, 0, 0.90956, -0.415573, 300, 0, 1);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
	(9, 27985);