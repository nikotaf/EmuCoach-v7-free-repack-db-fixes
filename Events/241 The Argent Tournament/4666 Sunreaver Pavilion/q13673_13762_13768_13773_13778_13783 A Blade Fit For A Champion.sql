UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'npc_lake_frog' WHERE `entry` IN (33211,33224);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
	(70002, 1, 'Ashwood Lake - Lake Frog Node 1'),
	(70003, 1, 'Ashwood Lake - Lake Frog Node 2'),
	(70004, 1, 'Ashwood Lake - Lake Frog Node 3'),
	(70005, 1, 'Ashwood Lake - Lake Frog Node 4'),
	(70006, 1, 'Ashwood Lake - Lake Frog Node 5'),
	(70007, 1, 'Ashwood Lake - Lake Frog Node 6');
UPDATE `creature` SET `spawndist`= 5, `MovementType`= 1 WHERE `guid` BETWEEN 149938 AND 149949 AND `id`= 33211;
UPDATE `creature` SET `id`= 33224 WHERE `guid` IN (149939,149941,149943,149945,149948,149949) AND `id`=33211;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
	(149938, 70002, 0, 'Ashwood Lake - Lake Frog Node 1'),
	(149939, 70002, 0, 'Ashwood Lake - Lake Frog Node 1'),
	(149940, 70003, 0, 'Ashwood Lake - Lake Frog Node 2'),
	(149941, 70003, 0, 'Ashwood Lake - Lake Frog Node 2'),
	(149942, 70004, 0, 'Ashwood Lake - Lake Frog Node 3'),
	(149943, 70004, 0, 'Ashwood Lake - Lake Frog Node 3'),
	(149944, 70005, 0, 'Ashwood Lake - Lake Frog Node 4'),
	(149945, 70005, 0, 'Ashwood Lake - Lake Frog Node 4'),
	(149946, 70006, 0, 'Ashwood Lake - Lake Frog Node 5'),
	(149947, 70007, 0, 'Ashwood Lake - Lake Frog Node 6'),
	(149948, 70006, 0, 'Ashwood Lake - Lake Frog Node 5'),
	(149949, 70007, 0, 'Ashwood Lake - Lake Frog Node 6');