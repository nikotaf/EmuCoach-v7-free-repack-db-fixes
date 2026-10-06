INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
	(1149100, 1, -54.790478, -268.802307, -57.949615, 'Dire Maul - Old Ironbark path to door'),
	(1149100, 2, 11.527915, -287.067535, -52.311283, 'Dire Maul - Old Ironbark path to door'),
	(1149100, 3, 52.493214, -270.618317, -53.080135, 'Dire Maul - Old Ironbark path to door'),
	(1149100, 4, 126.435768, -278.390656, -55.8811, 'Dire Maul - Old Ironbark path to door'),
	(1149101, 1, 126.435768, -278.390656, -55.8811, 'Dire Maul - Old Ironbark reverse path from door'),
	(1149101, 2, 52.493214, -270.618317, -53.080135, 'Dire Maul - Old Ironbark reverse path from door'),	
	(1149101, 3, 11.527915, -287.067535, -52.311283, 'Dire Maul - Old Ironbark reverse path from door'),
	(1149101, 4, -54.790478, -268.802307, -57.949615, 'Dire Maul - Old Ironbark reverse path from door');
SET @ENTRY := 11491;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI", ScriptName="" WHERE entry=@ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 5602, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 5602 selected - Self: Set npc flags NONE"),
	(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 1149100, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 5602 selected - Self: Start path #1149100, run, do not repeat, Passive"),
	(@ENTRY, 0, 2, 0, 40, 0, 100, 0, 4, 1149100, 0, 0, 80, 1149100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 4 of path 1149100 reached - Self: Start timed action list id #1149100 (update out of combat)"),
	(@ENTRY, 0, 3, 4, 40, 1, 100, 0, 4, 1149101, 0, 0, 17, 374, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 4 of path 1149101 reached - Self: Set emote state (UNIT_NPC_EMOTESTATE) to ONESHOT_SUBMERGE (374)"),
	(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 17, 373, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 4 of path 1149101 reached - Self: Set emote state (UNIT_NPC_EMOTESTATE) to STAND_STATE_SUBMERGED (373)"),
	(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On wapoint 4 of path 1149101 reached - Self: Despawn in 3 s");
SET @ENTRY := 1149100;
DELETE FROM smart_scripts WHERE entryOrGuid = @ENTRY AND source_type = 9;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
	(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Play emote ONESHOT_ATTACKUNARMED (35)"),
	(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 225000, 179549, 0, 0, 0, 0, 0, "After 2 seconds - Gameobject Door (179549) with guid 225000: Activate gameobject"),
	(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Play emote ONESHOT_NONE (0)"),
	(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 53, 1, 1149101, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "After 4 seconds - Self: Start path #1149101, run, do not repeat, Passive"),
	(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "After 0 seconds - Self: Increment phase by 1 and decrement by 0");