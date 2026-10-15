UPDATE `gameobject_template` SET `data5`= 90 WHERE `entry`=206963;
INSERT INTO `spell_dbc` (`Id`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `AttributesEx8`, `AttributesEx9`, `AttributesEx10`, `CastingTimeIndex`, `DurationIndex`, `powerType`, `rangeIndex`, `SchoolMask`, `runeCostID`, `SpellDifficultyId`, `SpellCoef`, `SpellScalingId`, `SpellAuraOptionsId`, `SpellAuraRestrictionsId`, `SpellCastingRequirementsId`, `SpellCategoriesId`, `SpellClassOptionsId`, `SpellCooldownsId`, `SpellEquippedItemsId`, `SpellInterruptsId`, `SpellLevelsId`, `SpellPowerId`, `SpellReagentsId`, `SpellShapeshiftId`, `SpellTargetRestrictionsId`, `SpellTotemsId`) VALUES
	(89374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `gameobject` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
	(206963, 1, 361, 1767, 1, 1, 6034.32, -1201.03, 373.731, 0.0506908, 0, 0, 0.0253427, 0.999679, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6020.67, -1232.02, 376.897, 5.59555, 0, 0, 0.337082, -0.941475, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6094.91, -1243.67, 374.834, 2.04162, 0, 0, 0.852532, 0.522676, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6115.09, -1210.1, 374.101, 1.97486, 0, 0, 0.834613, 0.550836, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6096.71, -1174.01, 373.214, 3.10583, 0, 0, 0.99984, 0.0178779, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6058.56, -1187.23, 373.476, 4.95936, 0, 0, 0.614625, -0.788819, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6012.71, -1192.5, 374.934, 1.0363, 0, 0, 0.495273, 0.868738, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 5988.8, -1124.34, 380.357, 1.35047, 0, 0, 0.62508, 0.78056, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6040.36, -1104.38, 381.231, 0.638898, 0, 0, 0.314043, 0.949409, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6116.19, -1104.6, 379.355, 1.90104, 0, 0, 0.813717, 0.581261, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6078.69, -1144.12, 377.77, 4.71668, 0, 0, 0.705588, -0.708623, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6117.13, -1190.43, 372.94, 0.467672, 0, 0, 0.231711, 0.972785, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6049.61, -1238.43, 379.202, 3.11288, 0, 0, 0.999897, 0.0143548, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 5986.17, -1161.77, 380.204, 0.446452, 0, 0, 0.221377, 0.975188, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6029.44, -1165.19, 375.426, 4.73001, 0, 0, 0.700848, -0.713311, 90, 0, 1),
	(206963, 1, 361, 1767, 1, 1, 6060.58, -1208.52, 377.543, 5.88376, 0, 0, 0.19839, -0.980123, 90, 0, 1);
SET @ENTRY := 48032;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 20, 0, 100, 0, 28220, 0, 0, 0, 86, 89356, 0, 23, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "On player rewarded quest 28220 - Owner/Summoner: Cast spell Summon Sapling Protector (89356) at Owner/Summoner"),
	(@ENTRY, 0, 1, 2, 76, 0, 100, 0, 0, 206963, 2, 5000, 33, 48164, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "When gameobject Rich Irontree Soil (206963) in range 2 (check every 5 seconds) - Owner/Summoner: Give kill credit Irontree Soil Credit (48164)"),
	(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 20, 206963, 2, 0, 0, 0, 0, 0, "When gameobject Rich Irontree Soil (206963) in range 2 (check every 5 seconds) - Closest gameobject Rich Irontree Soil (206963) in 2 yards: Activate gameobject"),
	(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 20, 206963, 5, 0, 0, 0, 0, 0, "When gameobject Rich Irontree Soil (206963) in range 2 (check every 5 seconds) - Closest gameobject Rich Irontree Soil (206963) in 5 yards: Reset (gameobject)"),
	(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 90, 0, 0, 0, 0, 20, 206963, 2, 0, 0, 0, 0, 0, "When gameobject Rich Irontree Soil (206963) in range 2 (check every 5 seconds) - Closest gameobject Rich Irontree Soil (206963) in 2 yards: Despawn in 5 s respawn in 90 seconds"),
	(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 75687, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When gameobject Rich Irontree Soil (206963) in range 2 (check every 5 seconds) - Self: Cast spell Seedling Pod Visual (75687) on Self");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;