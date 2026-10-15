SET @ENTRY := 53568;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET `npcflag`|= 1, AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
UPDATE `creature` SET `spawndist`= 10, `MovementType`= 1 WHERE `id`=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(@ENTRY, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Close gossip"),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 86, 99487, 3, 1, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Self: Cast spell Pickup Chicken (99487) with flags interrupt previous, triggered at Gossip player"),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Self: Despawn instantly");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 53568 AND SourceId = 0;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
(22, 1, 53568, 0, 0, 9, 0, 29352, 0, 0, 0, "Action invoker has quest 29352 active");