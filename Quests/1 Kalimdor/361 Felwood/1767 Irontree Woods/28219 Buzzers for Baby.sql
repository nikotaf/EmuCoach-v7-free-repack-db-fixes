DELETE FROM spell_area WHERE area IN (1767);
INSERT INTO spell_area (`area`, `spell`, `quest_start`, `quest_start_status`, `quest_end`, `quest_end_status`, `autocast`, `aura_spell`, `racemask`, `gender`) VALUES
	(1767, 89361, 28220, 64, 28224, 11, 1, 0, 2098253, 2),
	(1767, 89362, 28224, 64, 28228, 9, 1, 0, 2098253, 2);
SET @ENTRY := 6505;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 2;
DELETE FROM areatrigger_scripts WHERE entry = @ENTRY;
INSERT INTO areatrigger_scripts(entry, ScriptName) VALUES(@ENTRY, "SmartTrigger");
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 2, 0, 0, 46, 0, 100, 0, 0, 0, 0, 0, 86, 89338, 0, 7, 0, 0, 0, 7, 0, 10, 0, 0, 0, 0, 0, "On trigger - Triggering player: Cast spell Summon Seedling Protector (89338) at Triggering player"),
	(@ENTRY, 2, 1, 0, 46, 0, 100, 0, 0, 0, 0, 0, 86, 89356, 1, 7, 0, 0, 0, 7, 0, 10, 0, 0, 0, 0, 0, "On trigger - Triggering player: Cast spell Summon Sapling Protector (89356) with flags interrupt previous at Triggering player"),
	(@ENTRY, 2, 2, 0, 46, 0, 100, 0, 0, 0, 0, 0, 86, 89357, 1, 7, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On trigger - Triggering player: Cast spell Summon Fluorishing Protector (89357) with flags interrupt previous at Triggering player"),
	(@ENTRY, 2, 3, 0, 46, 0, 100, 0, 0, 0, 0, 0, 15, 28228, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On trigger - Triggering player: Call quest 28228 group event happened");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 6505 AND SourceId = 2;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, Comment) VALUES
	(22, 1, 6505, 2, 0, 9, 0, 28229, 64, 0, 0, "Action invoker has quest 28229 active"),
	(22, 1, 6505, 2, 1, 9, 0, 28219, 0, 0, 0, "Action invoker has quest 28219 active"),
	(22, 1, 6505, 2, 2, 9, 0, 28220, 0, 0, 0, "Action invoker has quest 28220 active"),
	(22, 2, 6505, 2, 0, 1, 0, 89361, 0, 0, 0, "Action invoker has aura of spell Training (89361), effect EFFECT_0"),
	(22, 2, 6505, 2, 1, 9, 0, 28221, 0, 0, 0, "Action invoker has quest 28221 active"),
	(22, 2, 6505, 2, 2, 9, 0, 28222, 0, 0, 0, "Action invoker has quest 28222 active"),
	(22, 3, 6505, 2, 0, 1, 0, 89362, 0, 0, 0, "Action invoker has aura of spell Irontree Woods Guardian Aura (89362), effect EFFECT_0"),
	(22, 3, 6505, 2, 1, 9, 0, 28224, 0, 0, 0, "Action invoker has quest 28224 active"),
	(22, 3, 6505, 2, 2, 9, 0, 28228, 0, 0, 0, "Action invoker has quest 28228 active"),
	(22, 4, 6505, 2, 0, 9, 0, 28228, 0, 0, 0, "Action invoker has quest 28228 active");