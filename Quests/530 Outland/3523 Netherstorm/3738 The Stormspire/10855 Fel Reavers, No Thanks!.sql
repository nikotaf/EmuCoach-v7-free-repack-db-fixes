SET @ENTRY := 22293;
UPDATE `quest_template` SET `RequiredNpcOrGo1`= @ENTRY, `RequiredNpcOrGo2`= 0, `RequiredNpcOrGoCount1`= 1, `RequiredNpcOrGoCount2`= 0 WHERE `Id`=10855;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 1, 20, 0, 100, 0, 10850, 0, 0, 0, 33, 22293, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On player rewarded quest 10850 - Rewarded player: Give kill credit Inactive Fel Reaver (22293)"),
	(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On player rewarded quest 10850 - Self: Kill self (Self)");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = 22293 AND SourceId = 0;