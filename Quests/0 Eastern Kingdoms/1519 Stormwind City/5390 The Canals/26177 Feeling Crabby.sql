UPDATE `creature_template` SET `npcflag`= 1, `AIName`= 'SmartAI' WHERE `entry`=42339;
UPDATE `smart_scripts` SET `target_type`= 1 WHERE `entryorguid`=42339 AND `source_type`=0 AND `id`=2 AND `link`=0;