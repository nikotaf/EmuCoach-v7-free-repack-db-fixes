SET @ENTRY := 4393;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 2000, 3000, 17000, 21000, 11, 73135, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Acidic Swamp Ooze - Every 17 - 21 seconds (2 - 3s initially) - Self: Cast spell Old Friends: Quest Accept & Bind (73135) on Victim"),
	(@ENTRY, 0, 1, 2, 8, 0, 100, 0, 42489, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Acidic Swamp Ooze - On spell Cast Ooze Zap When Energized (42489) hit - Self: storedTarget[0] = Caster"),
	(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Acidic Swamp Ooze - On spell Cast Ooze Zap When Energized (42489) hit - Self: Set event phase to 1"),
	(@ENTRY, 0, 3, 0, 6, 1, 100, 0, 0, 0, 0, 0, 33, 23797, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Acidic Swamp Ooze - On death - storedTarget[0]: Give kill credit Moxie Steelgrille (23797)"),
	(@ENTRY, 0, 4, 5, 1, 1, 100, 0, 0, 1000, 0, 1000, 64, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Acidic Swamp Ooze - Time between 0 - 1 seconds - Self: storedTarget[0] = Self"),
	(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Acidic Swamp Ooze - Time between 0 - 1 seconds - Self: Set event phase to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
	(22, 5, @ENTRY, 0, 0, 1, 1, 42483, 0, 0, 1, "Object has not aura of spell Ooze Channel (42483), effect EFFECT_0");
SET @ENTRY := 4394;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 0, 0, 100, 0, 2000, 3000, 17000, 21000, 11, 73135, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Bubbling Swamp Ooze - Every 17 - 21 seconds (2 - 3s initially) - Self: Cast spell Old Friends: Quest Accept & Bind (73135) on Victim"),
	(@ENTRY, 0, 1, 2, 8, 0, 100, 0, 42489, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, Bubbling Swamp Ooze - "On spell Cast Ooze Zap When Energized (42489) hit - Self: storedTarget[0] = Caster"),
	(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Bubbling Swamp Ooze - On spell Cast Ooze Zap When Energized (42489) hit - Self: Set event phase to 1"),
	(@ENTRY, 0, 3, 0, 6, 1, 100, 0, 0, 0, 0, 0, 33, 23797, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, "Bubbling Swamp Ooze - On death - storedTarget[0]: Give kill credit Moxie Steelgrille (23797)"),
	(@ENTRY, 0, 4, 5, 1, 1, 100, 0, 0, 1000, 0, 1000, 64, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Bubbling Swamp Ooze - Time between 0 - 1 seconds - Self: storedTarget[0] = Self"),
	(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Bubbling Swamp Ooze - Time between 0 - 1 seconds - Self: Set event phase to 0");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
	(22, 5, @ENTRY, 0, 0, 1, 1, 42483, 0, 0, 1, "Object has not aura of spell Ooze Channel (42483), effect EFFECT_0");