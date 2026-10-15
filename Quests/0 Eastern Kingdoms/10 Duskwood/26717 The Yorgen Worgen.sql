SET @ENTRY := 204777;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 1;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 15, 26717, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "When player opened gossip dialog - Gossip player: Call quest 26717 group event happened");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 22 AND SourceEntry = @ENTRY AND SourceId = 1;
UPDATE `gameobject_template` SET `data1`= 26717 WHERE `entry`=@ENTRY;