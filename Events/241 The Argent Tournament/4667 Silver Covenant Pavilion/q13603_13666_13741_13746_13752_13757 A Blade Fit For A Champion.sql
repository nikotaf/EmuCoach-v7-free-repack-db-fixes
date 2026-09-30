/*	Fix for 13603/13666/13741/13746/13752/13757/A Blade Fit For A Champion dailies (The Argent Tournament/Icecrown)	*/
UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'npc_lake_frog' WHERE `entry` IN (33211,33224);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (70002, 8, 'Ashwood Lake - Lake Frog');
UPDATE `creature` SET `spawndist`= 5, `MovementType`= 1 WHERE `guid` BETWEEN 149938 AND 149949 AND `id`= 33211;
UPDATE `creature` SET `id`= 33224 WHERE `guid`=149943;
UPDATE `creature` SET `id`= 33224 WHERE `guid`=149945;
UPDATE `creature` SET `id`= 33224 WHERE `guid`=149948;
UPDATE `creature` SET `id`= 33224 WHERE `guid`=149949;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
	(149938, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149939, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149940, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149941, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149942, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149943, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149944, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149945, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149946, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149947, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149948, 70002, 0, 'Ashwood Lake - Lake Frog'),
	(149949, 70002, 0, 'Ashwood Lake - Lake Frog');