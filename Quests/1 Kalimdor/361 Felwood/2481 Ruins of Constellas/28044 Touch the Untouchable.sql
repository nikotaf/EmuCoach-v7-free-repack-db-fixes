UPDATE `quest_template` SET `NextQuestId`= 28113 WHERE `Id`=28044;
UPDATE `quest_template` SET `PrevQuestId`= 28044 WHERE `Id`=28113;
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
	(47398, 1, 361, 5626, 1, 2, 0, 0, 4175.890137, -684.572998, 282.860962, 4.677485, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO `spell_phase` (`id`, `phasemask`, `terrainswapmap`, `worldmapareaswap`) VALUES
	(88438, 2, 0, 0);