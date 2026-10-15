DELETE FROM `creature_loot_template` WHERE `entry`=47398 AND `item` NOT IN
	(14256,15378,23384,29800,3940,3961,3964,3965,4005,4007,4020,4023,62919,8749);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 69 WHERE `entry`=47398 AND `item`=23384;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 22 WHERE `entry`=47398 AND `item`=29800;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 6 WHERE `entry`=47398 AND `item`=14256;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 1.2 WHERE `entry`=47398 AND `item`=4007;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= 0.6 WHERE `entry`=47398 AND `item` IN
	(15378,3940,3961,3964,3965,4005,4020,4023,8749);