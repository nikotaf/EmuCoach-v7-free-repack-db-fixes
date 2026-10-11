UPDATE `creature_text` SET `probability`= 33 WHERE `entry`=23602 AND `groupid`=0;
UPDATE `creature_text` SET `probability`= 25 WHERE `entry`=23602 AND `groupid`=1;
UPDATE `creature_template` SET `AIName`= 'SmartAI', `ScriptName`= '' WHERE `entry`=23602;
UPDATE `conditions` SET `ConditionValue1`= 27210 WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=8762 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=11126 AND `ConditionValue2`=0 AND `ConditionValue3`=0;