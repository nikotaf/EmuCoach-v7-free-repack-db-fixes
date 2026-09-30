SET @ENTRY := 31075;
DELETE FROM `smart_scripts` WHERE `entryOrGuid` = @ENTRY AND `source_type` = 0;
UPDATE `creature_template` SET `type_flags`=`type_flags`|1048576, `AIName`="SmartAI", `ScriptName`="" WHERE `entry`=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 1, 8, 0, 100, 0, 58203, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell Iron Chain (58203) hit - Self: storedTarget[0] = Caster"),
	(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 29, 0, 110, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell Iron Chain (58203) hit - Self: Follow Caster by distance 0, angle 110"),
	(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On spell Iron Chain (58203) hit - Self: Set event phase to 1"),
	(@ENTRY, 0, 3, 0, 75, 1, 100, 0, 0, 30920, 5, 1500, 45, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When creature Lumbering Atrocity (30920) in range 5 (check every 1.5 seconds) - Self: Set data[0] to 1"),
	(@ENTRY, 0, 4, 0, 60, 1, 100, 0, 0, 0, 2500, 5000, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Every 2.5 - 5 seconds (0 - 0s initially) - Self: Call OnReset() event"),
	(@ENTRY, 0, 5, 6, 38, 0, 100, 0, 0, 1, 0, 0, 19, 393216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Remove UNIT_FLAGS to PACIFIED, STUNNED"),
	(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, 30920, 10, 0, 0, 0, 0, 0, "On data[0] set to 1 - Closest alive creature Lumbering Atrocity (30920) in 10 yards: Set creature data #0 to 1"),
	(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 28, 58203, 1, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - storedTarget[0]: Remove 1 charges of aura due to spell Iron Chain (58203)"),
	(@ENTRY, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Despawn instantly"),
	(@ENTRY, 0, 9, 10, 25, 0, 100, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset - Self: Set data[0] to 0"),
	(@ENTRY, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 18, 393216, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset - Self: Set UNIT_FLAGS to PACIFIED, STUNNED"),
	(@ENTRY, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 23, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "On reset - Self: Increment phase by 0 and decrement by 1");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
	(22, 4, @ENTRY, 0, 0, 36, 0, 0, 0, 0, 0, "Action invoker is alive"),
	(22, 5, @ENTRY, 0, 0, 1, 0, 58203, 1, 0, 1, "Action invoker has not aura of spell Iron Chain (58203), effect EFFECT_1");
INSERT INTO `creature` (`id`, `map`, `zone`, `area`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `walkmode`) VALUES
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6247.09, 1824.04, 525.202, 5.68998, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6243.46, 1816.11, 525.271, 2.94108, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6247.43, 1806.61, 525.311, 3.96996, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6259.42, 1794.66, 525.184, 4.28805, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6266.5, 1787.75, 525.324, 3.42804, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6267.01, 1822.42, 525.336, 5.94525, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6278.5, 1807.61, 525.192, 3.7422, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6279.68, 1806.05, 525.192, 3.7422, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6280.91, 1804.25, 525.192, 3.7422, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6299.91, 1787.47, 525.194, 5.03421, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6299.47, 1862.02, 509.984, 5.74069, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6436.86, 1908.14, 508.622, 2.4813, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6455.54, 1827.83, 508.632, 1.47207, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6339.19, 1809.38, 508.601, 0.814252, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0),
	(@ENTRY, 571, 210, 4520, 1, 1, 0, 0, 6380.5, 1764.28, 508.972, 0.814273, 90, 0, 0, 12600, 0, 0, 0, 0, 0, 0);
SET @ENTRY := 30920;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 12000, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Every 12 - 12 seconds (5 - 8s initially) - Self: Cast spell Cleave (40504) on Victim"),
	(@ENTRY, 0, 1, 2, 4, 0, 100, 0, 0, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: storedTarget[0] = Attacked unit"),
	(@ENTRY, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 18, 197376, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Set UNIT_FLAGS to IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_16, PACIFIED"),
	(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Set react state to Passive"),
	(@ENTRY, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 84, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On aggro - Self: Talk 0"),
	(@ENTRY, 0, 5, 6, 38, 0, 100, 0, 0, 1, 0, 0, 84, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Talk 1"),
	(@ENTRY, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 86, 58231, 2, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Cast spell Exploding Abomination (58231) with flags triggered at Self"),
	(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 86, 58596, 2, 1, 0, 0, 0, 1, 30920, 2, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Cast spell Abomination Explosion (58596) with flags triggered at Self"),
	(@ENTRY, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - Self: Despawn in 1.5 s"),
	(@ENTRY, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 31075, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "On data[0] set to 1 - storedTarget[0]: Give kill credit Scourge Bomb (31075)"),
	(@ENTRY, 0, 10, 11, 25, 0, 100, 0, 0, 0, 0, 0, 19, 197376, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset - Self: Remove UNIT_FLAGS to IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_16, PACIFIED"),
	(@ENTRY, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset - Self: Set react state to Aggressive"),
	(@ENTRY, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset - Self: Set data[0] to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
	(22, 2, @ENTRY, 0, 0, 1, 0, 58203, 1, 0, 0, "Action invoker has aura of spell Iron Chain (58203), effect EFFECT_1");
DELETE FROM creature_text WHERE Entry=@ENTRY;
INSERT INTO creature_text (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `comment`) VALUES
(@ENTRY, 0, 0, "For me?", 12, 0, 17, 0, 1000, 0, 0, "(unknown)"),
(@ENTRY, 0, 1, "What bomb thing for?", 12, 0, 16, 0, 1000, 0, 0, "(unknown)"),
(@ENTRY, 0, 2, "What little giest want?", 12, 0, 17, 0, 1000, 0, 0, "(unknown)"),
(@ENTRY, 0, 3, "Want me to deliver somewhere?", 12, 0, 16, 0, 1000, 0, 0, "(unknown)"),
(@ENTRY, 0, 4, "I not sure this safe, little giest.", 12, 0, 17, 0, 1000, 0, 0, "(unknown)"),
(@ENTRY, 0, 5, "Present?", 12, 0, 17, 0, 1000, 0, 0, "(unknown)"),
(@ENTRY, 1, 0, "That not nice!", 12, 0, 50, 0, 100, 0, 0, "(unknown)"),
(@ENTRY, 1, 1, "This not go here.", 12, 0, 50, 0, 100, 0, 0, "(unknown)");