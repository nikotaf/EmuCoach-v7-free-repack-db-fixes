SET @ENTRY := 41375;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 8, 0, 100, 1, 77488, 0, 0, 0, 33, 41372, 0, 0, 0, 0, 0, 7, 41372, 5, 0, 0, 0, 0, 0, "On spell Signal Flare (77488) hit - Caster: Give kill credit Frostmane Retreat North (41372)"),
	(@ENTRY, 0, 1, 0, 8, 0, 100, 1, 77488, 0, 0, 0, 33, 41373, 0, 0, 0, 0, 0, 7, 41373, 5, 0, 0, 0, 0, 0, "On spell Signal Flare (77488) hit - Caster: Give kill credit Frostmane Retreat South (41373)");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 41375 AND SourceId = 0;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
	(22, 1, 41375, 0, 0, 29, 0, 41372, 20, 0, 0, "There is creature Frostmane Retreat North (41372) within range 20 yards to Action invoker"),
	(22, 2, 41375, 0, 0, 29, 0, 41373, 20, 0, 0, "There is creature Frostmane Retreat South (41373) within range 20 yards to Action invoker");