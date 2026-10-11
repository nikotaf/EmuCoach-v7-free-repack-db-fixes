SET @ENTRY := 30313;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 0, 75, 0, 100, 1, 141560, 0, 5, 2000, 80, 3031300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When creature  with guid 141560 in range 5 (check every 2 seconds) - Self: Start timed action list id #3031300 (update always)"),
	(@ENTRY, 0, 1, 0, 75, 0, 100, 1, 141561, 0, 5, 2000, 80, 3031301, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When creature  with guid 141561 in range 5 (check every 2 seconds) - Self: Start timed action list id #3031301 (update always)"),
	(@ENTRY, 0, 2, 0, 75, 0, 100, 1, 199591, 0, 5, 2000, 80, 3031302, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When creature  with guid 199591 in range 5 (check every 2 seconds) - Self: Start timed action list id #3031302 (update always)"),
	(@ENTRY, 0, 3, 0, 75, 0, 100, 1, 199592, 0, 5, 2000, 80, 3031303, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "When creature  with guid 199592 in range 5 (check every 2 seconds) - Self: Start timed action list id #3031303 (update always)");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 0;

SET @ENTRY := 3031300;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Talk 0 to invoker"),
	(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 2000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 - 5 seconds - Self: Talk 1 to invoker"),
	(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 2000, 5000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 - 5 seconds - Self: Talk 2 to invoker"),
	(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 2000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 - 5 seconds - Self: Talk 3 to invoker"),
	(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 2000, 5000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 - 5 seconds - Self: Talk 4 to invoker"),
	(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 2000, 5000, 0, 0, 33, 30315, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "After 2 - 5 seconds - Owner/Summoner: Give kill credit Temple of Invention Bunny (30315)"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 1, 1, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0.001 seconds - Self: Set event phase to 0"),
	(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Despawn instantly");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 9;

SET @ENTRY := 3031301;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 1, 0, 100, 0, 0, 0, 0, 0, 1, 10, 500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Talk 10 to invoker"),
	(@ENTRY, 9, 1, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 11, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 11 to invoker"),
	(@ENTRY, 9, 2, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 12, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 12 to invoker"),
	(@ENTRY, 9, 3, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 13, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 13 to invoker"),
	(@ENTRY, 9, 4, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 14 to invoker"),
	(@ENTRY, 9, 5, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 33, 30316, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Owner/Summoner: Give kill credit Temple of Life Bunny (30316)"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 1, 1, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0.001 seconds - Self: Set event phase to 0"),
	(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Despawn instantly");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 9;

SET @ENTRY := 3031302;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 1, 0, 100, 0, 0, 0, 0, 0, 1, 5, 500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Talk 5 to invoker"),
	(@ENTRY, 9, 1, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 6 to invoker"),
	(@ENTRY, 9, 2, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 7 to invoker"),
	(@ENTRY, 9, 3, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 8 to invoker"),
	(@ENTRY, 9, 4, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Self: Talk 9 to invoker"),
	(@ENTRY, 9, 5, 0, 1, 0, 100, 0, 2000, 5000, 0, 0, 33, 30317, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "After 2 seconds - Owner/Summoner: Give kill credit Temple of Winter Bunny (30317)"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 1, 1, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0.001 seconds - Self: Set event phase to 0"),
	(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Despawn instantly");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 9;

SET @ENTRY := 3031303;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 1, 0, 100, 0, 0, 0, 0, 0, 1, 15, 500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Talk 15 to invoker"),
	(@ENTRY, 9, 1, 0, 1, 0, 100, 0, 1500, 1500, 0, 0, 1, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 1.5 seconds - Self: Talk 16 to invoker"),
	(@ENTRY, 9, 2, 0, 1, 0, 100, 0, 3000, 3000, 0, 0, 1, 17, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 3 seconds - Self: Talk 17 to invoker"),
	(@ENTRY, 9, 3, 0, 1, 0, 100, 0, 4000, 4000, 0, 0, 1, 18, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 4 seconds - Self: Talk 18 to invoker"),
	(@ENTRY, 9, 4, 0, 1, 0, 100, 0, 6000, 6000, 0, 0, 33, 30318, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, "After 6 seconds - Owner/Summoner: Give kill credit Temple of Order Bunny (30318)"),
	(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 1, 1, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0.001 seconds - Self: Set event phase to 0"),
	(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Despawn instantly");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 9;