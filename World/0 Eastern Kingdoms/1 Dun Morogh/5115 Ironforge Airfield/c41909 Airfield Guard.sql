UPDATE `creature_template` SET `faction_A`= 57, `faction_H`= 57, `unit_flags`= 2048, `unit_flags2`= 2048, `dynamicflags`= 0 WHERE `entry`=41909;
DELETE FROM `creature_addon` WHERE `guid` IN (25770,25929);
UPDATE `creature` SET `unit_flags`= 0, `dynamicflags`= 0 WHERE `id`=41909 AND `guid` BETWEEN 25432 AND 26222;