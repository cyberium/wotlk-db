
SET @PATH_ID := '86602';

DELETE FROM `creature_movement` WHERE (`Id` = '86602');

UPDATE `creature` SET `MovementType` = '4' WHERE (`guid` = '86602');
UPDATE `creature_template` SET `SpeedWalk` = '1' WHERE (`Entry` = '8281');

INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, '01', '-6714.68164062500', '-1657.7144775390625', '201.4268798828125000', '100', '0', '0'),
(@PATH_ID, '02', '-6741.15185546875', '-1625.6520996093750', '191.9800567626953125', '100', '0', '0'),
(@PATH_ID, '03', '-6771.57958984375', '-1604.2850341796875', '189.6050567626953125', '100', '0', '0'),
(@PATH_ID, '04', '-6782.53369140625', '-1585.1710205078125', '191.8550567626953125', '100', '0', '0'),
(@PATH_ID, '05', '-6773.18359375000', '-1558.1369628906250', '194.3357238769531250', '100', '0', '0'),
(@PATH_ID, '06', '-6764.47509765625', '-1519.4692382812500', '190.2555999755859375', '100', '0', '0'),
(@PATH_ID, '07', '-6775.38720703125', '-1489.1074218750000', '179.7999572753906250', '100', '0', '0'),
(@PATH_ID, '08', '-6791.64208984375', '-1468.3773193359375', '174.2367248535156250', '100', '0', '0'),
(@PATH_ID, '09', '-6824.42187500000', '-1441.2968750000000', '164.9185638427734375', '100', '0', '0'),
(@PATH_ID, '10', '-6825.77587890625', '-1434.4338378906250', '160.8248138427734375', '100', '0', '0'),
(@PATH_ID, '11', '-6833.99023437500', '-1424.6015625000000', '161.9257354736328125', '100', '0', '0'),
(@PATH_ID, '12', '-6848.05078125000', '-1406.3627929687500', '167.8007354736328125', '100', '0', '0'),
(@PATH_ID, '13', '-6840.70703125000', '-1379.6743164062500', '169.3077850341796875', '100', '0', '0'),
(@PATH_ID, '14', '-6828.81884765625', '-1348.4453125000000', '169.2666015625000000', '100', '0', '0');