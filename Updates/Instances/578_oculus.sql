/* DBScriptData
DBName: The Oculus
DBScriptName: instance_oculus.sql
DB%Complete: 95%
DBComment: ReQ:
- internal phasing system between all 3 boses (Azure Ring Guardians should be visible after Drakos death, Greater Lay-Whelp: after Uroms death)
- few core updates (Varos Cloudstrider - better script, vehicle unboard anim, veh summon spell req. destination position fix)
EndDBScriptData */

SET @CGUID := 5780000; -- creatures
SET @OGUID := 5780000; -- gameobjects
SET @PGUID := 52300;   -- pools



-- =========
-- CREATURES
-- =========

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
 -- World Trigger (Large AOI)
(@CGUID+1, 22517,578,3,1,0,0,1061,982.6038,361.1535, 3.508112,7200,7200,0,0,4120,0,0,0),
 -- Varos Cloudstrider
(@CGUID+2, 27447,578,3,1,0,0,1285.603,1070.356,439.515,3.577925,86400,86400,0,0,325825,0,0,0),
 -- Azure Ley-Whelp
(@CGUID+3, 27636,578,3,1,0,0,1109.62, 1123.75, 361.07, 1.59132, 7200,7200,3,0,14610,0,0,1),
(@CGUID+4, 27636,578,3,1,0,0,1096.93, 1122.5,  361.07, 0.555255,7200,7200,3,0,14610,0,0,1),
(@CGUID+5, 27636,578,3,1,0,0,1084.61, 1125.67, 361.07, 2.92779, 7200,7200,3,0,14610,0,0,1),
(@CGUID+6, 27636,578,3,1,0,0,1097.22, 1135.21, 361.07, 4.05297, 7200,7200,3,0,14610,0,0,1),
(@CGUID+7, 27636,578,3,1,0,0,1108.75, 1132.63, 361.07, 1.22917, 7200,7200,3,0,14610,0,0,1),
(@CGUID+8, 27636,578,3,1,0,0,1164.9,  1108.6,  361.07, 2.33314, 7200,7200,3,0,14610,0,0,1),
(@CGUID+9, 27636,578,3,1,0,0,1171.43, 1099.99, 361.07, 4.3172,  7200,7200,3,0,14610,0,0,1),
(@CGUID+10,27636,578,3,1,0,0,1145.07, 1122.61, 361.07, 5.15618, 7200,7200,3,0,14610,0,0,1),
(@CGUID+11,27636,578,3,1,0,0,1137.39, 1126.28, 361.07, 3.52187, 7200,7200,3,0,14610,0,0,1),
(@CGUID+12,27636,578,3,1,0,0,1153.68, 1118.72, 361.07, 2.69372, 7200,7200,3,0,14610,0,0,1),
(@CGUID+13,27636,578,3,1,0,0,1180.65, 1031.1,  361.07, 5.862,   7200,7200,3,0,14610,0,0,1),
(@CGUID+14,27636,578,3,1,0,0,1187.3,  1037.93, 361.07, 3.48468, 7200,7200,3,0,14610,0,0,1),
(@CGUID+15,27636,578,3,1,0,0,1175,    1042.11, 361.07, 3.41428, 7200,7200,3,0,14610,0,0,1),
(@CGUID+16,27636,578,3,1,0,0,1175.36, 1023.77, 361.15, 0.368577,7200,7200,3,0,14610,0,0,1),
(@CGUID+17,27636,578,3,1,0,0,1186.37, 1024.1,  361.07, 0.244397,7200,7200,3,0,14610,0,0,1),
(@CGUID+18,27636,578,3,1,0,0,1112.57, 969.058, 361.07, 4.13822, 7200,7200,3,0,14610,0,0,1),
(@CGUID+19,27636,578,3,1,0,0,1118.33, 972.062, 361.07, 0.949516,7200,7200,3,0,14610,0,0,1),
(@CGUID+20,27636,578,3,1,0,0,1113.42, 977.57,  361.07, 4.34972, 7200,7200,3,0,14610,0,0,1),
(@CGUID+21,27636,578,3,1,0,0,1124.61, 967.883, 361.07, 3.94894, 7200,7200,3,0,14610,0,0,1),
(@CGUID+22,27636,578,3,1,0,0,1123.89, 976.38,  361.07, 3.25111, 7200,7200,3,0,14610,0,0,1),
-- Azure Ring Guardian
(@CGUID+23,27638,578,3,1,0,0,1030.047, 1141.716, 392.9146, 6.003932,7200,7200,10,0,115952,19465,0,1),
(@CGUID+24,27638,578,3,1,0,0,941.257,  1159.422, 421.8209, 3.874631,7200,7200,10,0,115952,19465,0,1),
(@CGUID+25,27638,578,3,1,0,0,970.6511, 1140.792, 464.0625, 3.385939,7200,7200,10,0,115952,19465,0,1),
(@CGUID+26,27638,578,3,1,0,0,996.1384, 1235.405, 390.7638, 1.518436,7200,7200,10,0,115952,19465,0,1),
(@CGUID+27,27638,578,3,1,0,0,1041.726, 941.4269, 381.7326, 3.403392,7200,7200,10,0,115952,19465,0,1),
(@CGUID+28,27638,578,3,1,0,0,1012.729, 972.9485, 415.1194, 2.408554,7200,7200,10,0,115952,19465,0,1),
(@CGUID+29,27638,578,3,1,0,0,985.8004, 941.1823, 442.0985, 4.921828,7200,7200,10,0,115952,19465,0,1),
(@CGUID+30,27638,578,3,1,0,0,1077.399, 1157.634, 406.2566, 5.393067,7200,7200,10,0,115952,19465,0,1),
(@CGUID+31,27638,578,3,1,0,0,963.4518, 907.3992, 400.8269, 4.34587, 7200,7200,10,0,115952,19465,0,1),
(@CGUID+32,27638,578,3,1,0,0,1008.72,  1117.413, 451.6099, 4.29351, 7200,7200,10,0,115952,19465,0,1),
(@CGUID+33,27638,578,3,1,0,0,1076.891, 937.7878, 448.4067, 1.302938,7200,7200,10,0,115952,19465,0,1),
(@CGUID+34,27638,578,3,1,0,0,1036.073, 900.6458, 519.9312, 0.13290, 7200,7200,10,0,115952,19465,0,1),
(@CGUID+35,27638,578,3,1,0,0,1118.518, 899.5878, 389.1668, 6.144441,7200,7200,10,0,115952,19465,0,1),
(@CGUID+36,27638,578,3,1,0,0,1044.61,  933.8655, 527.4049, 0.530989,7200,7200,10,0,115952,19465,0,1),
(@CGUID+37,27638,578,3,1,0,0,1024.177, 1197.694, 530.8471, 5.242427,7200,7200,10,0,115952,19465,0,1),
(@CGUID+38,27638,578,3,1,0,0,1043.458, 1147.795, 543.8077, 4.468043,7200,7200,10,0,115952,19465,0,1),
(@CGUID+39,27638,578,3,1,0,0,1074.01,  1177.901, 478.3471, 2.225552,7200,7200,10,0,115952,19465,0,1),
(@CGUID+40,27638,578,3,1,0,0,1144.318, 913.521,  441.3957, 0.589103,7200,7200,10,0,115952,19465,0,1),
(@CGUID+41,27638,578,3,1,0,0,1190.075, 1045.836, 446.4344, 3.51344, 7200,7200,10,0,115952,19465,0,1),
(@CGUID+42,27638,578,3,1,0,0,1203.42,  991.4573, 385.748,  5.114297,7200,7200,10,0,115952,19465,0,1),
(@CGUID+43,27638,578,3,1,0,0,1219.488, 1011.893, 469.4328, 3.601082,7200,7200,10,0,115952,19465,0,1),
(@CGUID+44,27638,578,3,1,0,0,1199.031, 1185.669, 453.8415, 5.954864,7200,7200,10,0,115952,19465,0,1),
(@CGUID+45,27638,578,3,1,0,0,1194.557, 1067.217, 556.6411, 4.525418,7200,7200,10,0,115952,19465,0,1),
(@CGUID+46,27638,578,3,1,0,0,1198.035, 1099.78,  472.2283, 2.600653,7200,7200,10,0,115952,19465,0,1),
(@CGUID+47,27638,578,3,1,0,0,1202.138, 1129.525, 415.2621, 4.824568,7200,7200,10,0,115952,19465,0,1),
(@CGUID+48,27638,578,3,1,0,0,1207.756, 1104.578, 387.5966, 5.469576,7200,7200,10,0,115952,19465,0,1),
(@CGUID+49,27638,578,3,1,0,0,1077.609, 1246.901, 402.2541, 5.262224,7200,7200,10,0,115952,19465,0,1),
(@CGUID+50,27638,578,3,1,0,0,1077.333, 1257.854, 461.9221, 4.443161,7200,7200,10,0,115952,19465,0,1),
(@CGUID+51,27638,578,3,1,0,0,1127.459, 1224.585, 428.9137, 2.985987,7200,7200,10,0,115952,19465,0,1),
(@CGUID+52,27638,578,3,1,0,0,1244.614, 1153.301, 449.3894, 6.194761,7200,7200,10,0,115952,19465,0,1),
(@CGUID+53,27638,578,3,1,0,0,1270.669, 1006.334, 379.2097, 0.865637,7200,7200,10,0,115952,19465,0,1),
(@CGUID+54,27638,578,3,1,0,0,1288.246, 1164.868, 414.0583, 2.08341, 7200,7200,10,0,115952,19465,0,1),
(@CGUID+55,27638,578,3,1,0,0,1194.046, 913.5811, 414.2215, 5.535349,7200,7200,10,0,115952,19465,0,1),
(@CGUID+56,27638,578,3,1,0,0,1251.832, 944.9786, 456.4818, 4.145931,7200,7200,10,0,115952,19465,0,1),
(@CGUID+57,27638,578,3,1,0,0,1119.689, 871.3569, 432.0644, 1.237679,7200,7200,10,0,115952,19465,0,1),
(@CGUID+58,27638,578,3,1,0,0,1319.575, 996.9996, 452.7709, 2.105335,7200,7200,10,0,115952,19465,0,1),
(@CGUID+59,27638,578,3,1,0,0,1093.559, 864.0083, 484.4272, 4.29882, 7200,7200,10,0,115952,19465,0,1),
(@CGUID+60,27638,578,3,1,0,0,1349.203, 1080.752, 406.9543, 2.918865,7200,7200,10,0,115952,19465,0,1),
-- Ring-Lord Sorceress
(@CGUID+61,27639,578,3,1,0,0,1117.551, 998.5519, 433.1589, 5.88176, 7200,7200,0,0,50400,19970,0,0),
(@CGUID+62,27639,578,3,1,0,0,1072.31,  1007.254, 433.1589, 5.044002,7200,7200,0,0,50400,19970,0,0),
(@CGUID+63,27639,578,3,1,0,0,1137.67,  1112.015, 433.1589, 3.281219,7200,7200,0,0,50400,19970,0,0),
(@CGUID+64,27639,578,3,1,0,0,1112.339, 1103.668, 433.1589, 0.488692,7200,7200,0,0,50400,19970,0,0),
(@CGUID+65,27639,578,3,1,0,0,1083.772, 1099.711, 433.1589, 2.80998, 7200,7200,0,0,50400,19970,0,0),
-- Ring-Lord Conjurer
(@CGUID+66,27640,578,3,1,0,0,1062.082, 993.6989, 433.1589, 0.052,7200,7200,0,0,48700,19465,0,0),
(@CGUID+67,27640,578,3,1,0,0,1122.372, 981.4753, 433.1589, 0.995,7200,7200,0,0,48700,19465,0,0),
(@CGUID+68,27640,578,3,1,0,0,1088.245, 989.9443, 433.1589, 2.775,7200,7200,0,0,48700,19465,0,0),
(@CGUID+69,27640,578,3,1,0,0,1142.361, 992.2079, 433.1589, 3.072,7200,7200,0,0,48700,19465,0,0),
(@CGUID+70,27640,578,3,1,0,0,1130.904, 1097.904, 433.1589, 2.059,7200,7200,0,0,48700,19465,0,0),
(@CGUID+71,27640,578,3,1,0,0,1081.359, 1111.199, 433.0826, 3.787,7200,7200,0,0,48700,19465,0,0),
(@CGUID+72,27640,578,3,1,0,0,1061.414, 1095.97,  432.5221, 0.646,7200,7200,0,0,48700,19465,0,0),
(@CGUID+73,27640,578,3,1,0,0,1036.511, 890.4853, 439.5151, 5.882,7200,7200,0,0,48700,19465,0,0),
(@CGUID+74,27640,578,3,1,0,0,1017.142, 1201.996, 439.5151, 6.144,7200,7200,0,0,48700,19465,0,0),
-- Centrifuge Construct
(@CGUID+75,27641,578,3,1,0,0,1076.914, 994.3038, 432.9628, 1.204277,7200,7200,0,0,48700,0,0,0),
(@CGUID+76,27641,578,3,1,0,0,1129.711, 993.2311, 432.9629, 2.076942,7200,7200,0,0,48700,0,0,0),
(@CGUID+77,27641,578,3,1,0,0,1124.397, 1109.755, 432.9628, 4.310963,7200,7200,0,0,48700,0,0,0),
(@CGUID+78,27641,578,3,1,0,0,1071.592, 1103.797, 432.9628, 5.218534,7200,7200,0,0,48700,0,0,0),
(@CGUID+79,27641,578,3,1,0,0,1023.649, 1190.877, 439.5151, 2.164208,7200,7200,0,0,48700,0,0,0),
(@CGUID+80,27641,578,3,1,0,0,1045.163, 899.4333, 439.5151, 4.08407, 7200,7200,0,0,48700,0,0,0),
(@CGUID+81,27641,578,3,1,0,0,1041.178, 877.5749, 439.5151, 1.789631,7200,7200,0,0,48700,0,0,0),
(@CGUID+82,27641,578,3,1,0,0,1023.171, 893.2711, 439.5151, 6.050801,7200,7200,0,0,48700,0,0,0),
(@CGUID+83,27641,578,3,1,0,0,1004.94,  1202.978, 439.5151, 0,       7200,7200,0,0,48700,0,0,0),
(@CGUID+84,27641,578,3,1,0,0,1025.528, 1210.878, 439.5151, 4.118977,7200,7200,0,0,48700,0,0,0),
 -- Drakos the Interrogator
(@CGUID+85,27654,578,3,1,0,0,947.7938, 1045.8, 360.0506, 0.3141593,86400,86400,0,0,325825,0,0,0),
-- Azure Inquisitor
(@CGUID+86,27633,578,3,1,0,0,1094.9, 1127.86,361.07, 4.98004, 7200,7200,5,0,48700,0,0,1),
(@CGUID+87,27633,578,3,1,0,0,1059.51,1109.81,361.154,0.855211,7200,7200,0,0,48700,0,0,0),
(@CGUID+88,27633,578,3,1,0,0,1052.99,1113.96,361.154,0.680678,7200,7200,0,0,48700,0,0,0),
(@CGUID+89,27633,578,3,1,0,0,1174.35,1003.22,361.07, 4.06438, 7200,7200,0,0,48700,0,0,2), -- waypoints
(@CGUID+90,27633,578,3,1,0,0,1183,   1037.33,361.07, 3.93238, 7200,7200,5,0,48700,0,0,1),
(@CGUID+91,27633,578,3,1,0,0,1116.51,1130.38,361.07, 6.22028, 7200,7200,2,0,48700,0,0,1),
-- Azure Spellbinder
(@CGUID+92,27635,578,3,1,0,0,1173.92,1002.57,361.07, 4.07997,7200,7200,0,0,48700,19465,0,2), -- waypoints
(@CGUID+93,27635,578,3,1,0,0,1181.7, 1036.55,361.07, 4.61873,7200,7200,3,0,48700,19465,0,1),
(@CGUID+94,27635,578,3,1,0,0,1093.55,1129.06,361.07, 6.27919,7200,7200,3,0,48700,19465,0,1),
(@CGUID+95,27635,578,3,1,0,0,1185.69,1070.27,361.07, 4.65,   7200,7200,3,0,48700,19465,0,1),
(@CGUID+96,27635,578,3,1,0,0,1173.36,1069.33,361.07, 4.85,   7200,7200,3,0,48700,19465,0,1),
(@CGUID+97,27635,578,3,1,0,0,1116.51,1130.38,361.07, 2.17407,7200,7200,2,0,48700,19465,0,1),
(@CGUID+98,27635,578,3,1,0,0,1050,   1108.03,361.154,0.62832,7200,7200,0,0,48700,19465,0,0),
-- Verdisa
(@CGUID+99,27657,578,3,1,0,0,945.5121, 1025.811, 360.6357, 1.029744,7200,7200,0,0,12600,0,0,0),
-- Belgaristrasz
(@CGUID+100,27658,578,3,1,0,0,933.148, 1042.43, 360.219, 0.2443461,7200,7200,0,0,12600,0,0,0),
-- Eternos
(@CGUID+101,27659,578,3,1,0,0,935.8368, 1063.625, 360.469, 5.77704,7200,7200,0,0,12600,0,0,0),
-- Centrifuge Core
(@CGUID+102,28183,578,3,1,0,0,1246.566, 1051.252, 439.2328, 0.5061455,7200,7200,0,0,8982,0,0,0),
(@CGUID+103,28183,578,3,1,0,0,1242.733, 1079.592, 439.2328, 6.108652, 7200,7200,0,0,8982,0,0,0),
(@CGUID+104,28183,578,3,1,0,0,1277.075, 1027.79,  439.2328, 1.37881,  7200,7200,0,0,8982,0,0,0),
(@CGUID+105,28183,578,3,1,0,0,1265.302, 1109.227, 439.2328, 5.183628, 7200,7200,0,0,8982,0,0,0),
(@CGUID+106,28183,578,3,1,0,0,1305.63,  1031.752, 439.2328, 2.042035, 7200,7200,0,0,8982,0,0,0),
(@CGUID+107,28183,578,3,1,0,0,1328.002, 1061.153, 439.2328, 2.897247, 7200,7200,0,0,8982,0,0,0),
(@CGUID+108,28183,578,3,1,0,0,1324.385, 1089.797, 439.2328, 3.595378, 7200,7200,0,0,8982,0,0,0),
(@CGUID+109,28183,578,3,1,0,0,1293.799, 1113.181, 439.2328, 4.485496, 7200,7200,0,0,8982,0,0,0),
-- Greater Ley-Whelp
(@CGUID+110,28276,578,3,1,0,0,1085.998, 1108.346, 559.1501, 4.153883, 7200,7200,10,0,39999,0,0,1),
(@CGUID+111,28276,578,3,1,0,0,1144.652, 1105.008, 549.8384, 0.1745329,7200,7200,10,0,39999,0,0,1),
(@CGUID+112,28276,578,3,1,0,0,1151.339, 995.3097, 567.5745, 1.500983, 7200,7200,10,0,39999,0,0,1),
(@CGUID+113,28276,578,3,1,0,0,1157.305, 1081.374, 562.9417, 0.6108652,7200,7200,10,0,39999,0,0,1),
(@CGUID+114,28276,578,3,1,0,0,1161.662, 1045.673, 573.3932, 5.148721, 7200,7200,10,0,39999,0,0,1),
(@CGUID+115,28276,578,3,1,0,0,1043.065, 1039.12,  558.9078, 0.9599311,7200,7200,10,0,39999,0,0,1),
(@CGUID+116,28276,578,3,1,0,0,1122.941, 978.5966, 557.7586, 4.363323, 7200,7200,10,0,39999,0,0,1),
(@CGUID+117,28276,578,3,1,0,0,1098.953, 987.4993, 574.0043, 5.550147, 7200,7200,10,0,39999,0,0,1),
(@CGUID+118,28276,578,3,1,0,0,1071.136, 987.3524, 560.4556, 0.8203048,7200,7200,10,0,39999,0,0,1),
(@CGUID+119,28276,578,3,1,0,0,1054.918, 1102.01,  567.0529, 1.815142, 7200,7200,10,0,39999,0,0,1),
(@CGUID+120,28276,578,3,1,0,0,1177.913, 1064.385, 553.296,  1.099557, 7200,7200,10,0,39999,0,0,1),
(@CGUID+121,28276,578,3,1,0,0,1113.768, 1114.633, 573.2681, 2.024582, 7200,7200,10,0,39999,0,0,1),
(@CGUID+122,28276,578,3,1,0,0,1161.343, 1016.045, 578.7543, 1.850049, 7200,7200,10,0,39999,0,0,1),
(@CGUID+123,28276,578,3,1,0,0,1052.226, 1014.511, 572.7056, 2.827433, 7200,7200,10,0,39999,0,0,1),
(@CGUID+124,28276,578,3,1,0,0,1046.967, 1071.693, 573.9418, 4.39823,  7200,7200,10,0,39999,0,0,1),
-- Crystal Spider
(@CGUID+125,32261,578,3,1,0,0,1122.957, 1102.364, 495.7064, 6.058619,7200,7200,7,0,8,0,0,1),
(@CGUID+126,32261,578,3,1,0,0,1154.383, 1039.112, 495.71,   5.44379, 7200,7200,7,0,8,0,0,1),
(@CGUID+127,32261,578,3,1,0,0,1108.935, 996.6543, 495.6653, 4.043958,7200,7200,7,0,8,0,0,1),
(@CGUID+128,32261,578,3,1,0,0,1203.356, 952.1097, 526.6548, 2.006969,7200,7200,7,0,8,0,0,1),
(@CGUID+129,32261,578,3,1,0,0,969.4545, 1081.179, 526.6548, 5.011875,7200,7200,7,0,8,0,0,1),
(@CGUID+130,32261,578,3,1,0,0,1196.439, 1152.159, 526.6548, 2.830169,7200,7200,7,0,8,0,0,1);

-- addons
DELETE FROM `creature_template_addon` WHERE entry IN (27633,27635,27639,27640,27641,27654,27657,27658,27659,28183,28276,32261,27755,27692,27756);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(27633,0,0,1,0,0,0,NULL),
(27635,0,0,1,0,0,0,NULL),
(27639,0,0,1,0,0,0,NULL),
(27640,0,0,1,0,0,0,NULL),
(27641,0,0,1,0,0,0,NULL),
(27654,0,0,1,0,0,0,NULL),
(27657,0,0,1,0,0,0,NULL),
(27658,0,0,1,0,0,0,NULL),
(27659,0,0,1,0,0,0,NULL),
(28183,0,0,1,0,0,0,50798),
(28276,0,50331648,1,0,0,8192,NULL),
(32261,0,0,1,0,0,0,NULL),
-- summoned drakes
(27755,0,0,0,0,0,0,'50325 50296'),
(27692,0,0,0,0,0,0,'50325 50296'),
(27756,0,0,0,0,0,0,'50248 50325 50296');

-- INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES

-- Waypoints
-- Ley-Guardian Eregos - summoned (BaseScript wont remove it)
UPDATE creature_template SET MovementType = 2 WHERE entry IN (27656,31561);
DELETE FROM `creature_movement_template` WHERE entry = 27656;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `WaitTime`, `ScriptId`, `Orientation`) VALUES
-- Ley-Guardian Eregos
(27656,0,1,1064.03,1047.203,648.9442,0,5,100),
(27656,0,2,1080.695,1016.914,651.9733,0,0,100),
(27656,0,3,1112.462,1010.671,651.945,0,0,100),
(27656,0,4,1138.34,1025.522,649.167,0,0,100),
(27656,0,5,1147.547,1056.192,645.4739,0,0,100),
(27656,0,6,1133.224,1083.321,643.0583,0,0,100),
(27656,0,7,1099.274,1093.153,643.3914,0,0,100),
(27656,0,8,1070.653,1075.219,646.2492,0,0,100);

-- Individual waypoints
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `WaitTime`, `ScriptId`, `Orientation`) VALUES
-- Azure Spellbinder
(@CGUID+92,1,1166.95,993.672,361.07,0,0,3.92289),
(@CGUID+92,2,1155.39,984.445,361.07,0,0,3.82079),
(@CGUID+92,3,1144.2,977.808,361.07,0,0,3.5616),
(@CGUID+92,4,1134.92,975.511,361.07,0,0,3.40845),
(@CGUID+92,5,1123.42,972.44,361.07,0,0,3.4006),
(@CGUID+92,6,1134.85,975.482,361.07,0,0,0.321836),
(@CGUID+92,7,1145.87,978.168,361.07,0,0,0.361106),
(@CGUID+92,8,1155.21,984.239,361.07,0,0,0.687046),
(@CGUID+92,9,1166.76,993.589,361.07,0,0,0.742024),
(@CGUID+92,10,1173.78,1002.16,361.07,0,0,1.09153),
(@CGUID+92,11,1179.54,1014.42,361.07,0,0,1.37427),
(@CGUID+92,12,1181.31,1026.78,361.07,0,0,1.49208),
(@CGUID+92,13,1179.5,1014.78,361.07,0,0,4.42555),
(@CGUID+92,14,1173.92,1002.97,361.07,0,0,4.12394),
-- Azure Inquisitor
(@CGUID+89,1,1166.95,993.672,361.07,0,0,3.92289),
(@CGUID+89,2,1155.39,984.445,361.07,0,0,3.82079),
(@CGUID+89,3,1144.2,977.808,361.07,0,0,3.5616),
(@CGUID+89,4,1134.92,975.511,361.07,0,0,3.40845),
(@CGUID+89,5,1123.42,972.44,361.07,0,0,3.4006),
(@CGUID+89,6,1134.85,975.482,361.07,0,0,0.321836),
(@CGUID+89,7,1145.87,978.168,361.07,0,0,0.361106),
(@CGUID+89,8,1155.21,984.239,361.07,0,0,0.687046),
(@CGUID+89,9,1166.76,993.589,361.07,0,0,0.742024),
(@CGUID+89,10,1173.78,1002.16,361.07,0,0,1.09153),
(@CGUID+89,11,1179.54,1014.42,361.07,0,0,1.37427),
(@CGUID+89,12,1181.31,1026.78,361.07,0,0,1.49208),
(@CGUID+89,13,1179.5,1014.78,361.07,0,0,4.42555),
(@CGUID+89,14,1173.92,1002.97,361.07,0,0,4.12394);

INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(28166,578,27654,16+4096,50),
(28276,578,27656,4096,0);

INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
-- Centrifuge Construct / Ring-Lord Sorcerress / Ring-Lord Conjurer
-- 1st group
(@CGUID+62, @CGUID+75, 1+2),
(@CGUID+66, @CGUID+75, 1+2),
(@CGUID+68, @CGUID+75, 1+2),
-- 2nd group
(@CGUID+61, @CGUID+76, 1+2),
(@CGUID+67, @CGUID+76, 1+2),
(@CGUID+69, @CGUID+76, 1+2),
-- 3rd group
(@CGUID+63, @CGUID+77, 1+2),
(@CGUID+64, @CGUID+77, 1+2),
(@CGUID+70, @CGUID+77, 1+2),
-- 4th group
(@CGUID+65, @CGUID+78, 1+2),
(@CGUID+71, @CGUID+78, 1+2),
(@CGUID+72, @CGUID+78, 1+2),
-- 5th group
(@CGUID+79, @CGUID+74, 1+2),
(@CGUID+83, @CGUID+74, 1+2),
(@CGUID+84, @CGUID+74, 1+2),
-- 6th group
(@CGUID+80, @CGUID+73, 1+2),
(@CGUID+81, @CGUID+73, 1+2),
(@CGUID+82, @CGUID+73, 1+2);

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- Doodad_Nexus_Elevator_BaseStructure_01
(@OGUID+1, 188514, 578, 3, 1, 1339.237, 830.3174, 186.8192, -0.532325, 0, 0, -0.263031334, 0.964787304, 7200, 7200,255,1),
(@OGUID+2, 188514, 578, 3, 1, 795.597,  994.6667, 195.3038, -2.984498, 0, 0,  0.996917307,-0.078459166, 7200, 7200,255,1),
(@OGUID+3, 188514, 578, 3, 1, 1209.707, 1334.591, 192.3754,  1.108283, 0, 0,  0.526213944, 0.850352228, 7200, 7200,255,1),
-- Orb of the Nexus
(@OGUID+4, 188715, 578, 3, 1, 1048.272, 991.3105, 361.0702, -0.8901166, 0, 0, -0.430511, 0.902586, 7200, 7200, 255, 1),
-- Nexus Portal
(@OGUID+5, 189985, 578, 3, 1, 1045.573, 1104.242, 361.0702, -1.64061, 0, 0, -0.731354, 0.681998, 7200, 7200, 255, 1),
-- Dragon Cage
(@OGUID+6, 189986, 578, 3, 1, 933.268, 1042.21, 359.967, 1.797689, 0, 0, 0.782608, 0.622514, 7200, 7200, 255, 1),
(@OGUID+7, 189986, 578, 3, 1, 945.794, 1025.96, 359.967, 2.652894, 0, 0, 0.970294, 0.241927, 7200, 7200, 255, 1),
(@OGUID+8, 189986, 578, 3, 1, 936.102, 1063.24, 359.967, 1.047198, 0, 0, 0.500001, 0.866025, 7200, 7200, 255, 1),
-- Icethorn
(@OGUID+9,  190172, 578, 3, 1, 1152.827, 1080.043, 495.6822, -1.431168, 0, 0, 0, 1, 7200, 7200, 255, 1),
(@OGUID+10, 190172, 578, 3, 1, 1194.956, 1155.363, 526.6547, -0.593412, 0, 0, 0, 1, 7200, 7200, 255, 1),
-- Spotlight
(@OGUID+11, 191351, 578, 3, 1, 1014.422, 1053.666, 605.619, 1.745327, 0, 0, 0.766045, 0.642787, -1, -1, 255, 1),
-- Cache of Eregos (Normal)
(@OGUID+12, 191349, 578, 1, 1, 1015.057, 1051.089, 605.619, 0.01745246, 0, 0, 0.00872589, 0.999962, -86400, -86400, 255, 1),
-- Cache of Eregos (Heroic)
(@OGUID+13, 193603, 578, 2, 1, 1015.057, 1051.089, 605.619, 0.01745246, 0, 0, 0.00872589, 0.999962, -86400, -86400, 255, 1),
-- Dragon Cage Door
(@OGUID+14, 193995, 578, 3, 1, 933.268, 1042.21, 359.967, 1.797689, 0, 0, 0.782608, 0.622514, 7200, 7200, 255, 1),
(@OGUID+15, 193995, 578, 3, 1, 945.794, 1025.96, 359.967, 2.652894, 0, 0, 0.970294, 0.241927, 7200, 7200, 255, 1),
(@OGUID+16, 193995, 578, 3, 1, 936.102, 1063.24, 359.967, 1.047198, 0, 0, 0.500001, 0.866025, 7200, 7200, 255, 1);

-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES

-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES

-- =======
-- POOLING
-- =======

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@PGUID+1, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 1'),
(@PGUID+2, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 2'),
(@PGUID+3, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 3'),
(@PGUID+4, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 4');

INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+92, @PGUID+1, 0, 'The Oculus - Azure Spellbinder - Pool 1'),
(@CGUID+89, @PGUID+1, 0, 'The Oculus - Azure Inquisitor - Pool 1'),
(@CGUID+93, @PGUID+2, 0, 'The Oculus - Azure Spellbinder - Pool 2'),
(@CGUID+90, @PGUID+2, 0, 'The Oculus - Azure Inquisitor - Pool 2'),
(@CGUID+94, @PGUID+3, 0, 'The Oculus - Azure Spellbinder - Pool 3'),
(@CGUID+86, @PGUID+3, 0, 'The Oculus - Azure Inquisitor - Pool 3'),
(@CGUID+97, @PGUID+4, 0, 'The Oculus - Azure Spellbinder - Pool 4'),
(@CGUID+91, @PGUID+4, 0, 'The Oculus - Azure Inquisitor - Pool 4');

-- INSERT INTO `pool_pool` (`entry`, `max_limit`, `description`) VALUES
-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES

DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN (27654,27447,27655,27656);
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Varos
(27654,6000,3,0,0,0,27658,75,0,0,0,0,0,939.73,1044.25,359.96,0,'Belgaristrasz - move out of the cage'),
(27654,6000,3,0,0,0,27657,75,0,0,0,0,0,948.57,1032.11,359.96,0,'Verdisa - move out of the cage'),
(27654,6000,3,0,0,0,27659,75,0,0,0,0,0,941.93,1060.08,359.96,0,'Eternos - move out of the cage'),
(27654,9000,0,0,0,0,27658,75,0,26937,0,0,0,0,0,0,0,'Belgaristrasz - say greet'),
(27654,17000,0,0,0,0,27447,360,0,31812,0,0,0,0,0,0,0,'Varos - yell intro, map wide'),
(27654,17000,16,13648,8,0,27447,360,0,0,0,0,0,0,0,0,0,'Varos - yell intro sound, map wide'),
-- Image of Belgaristrasz
(27447,1000,15,12980,0,0,28012,10,0,0,0,0,0,0,0,0,0,'Image of Belgaristrasz - cast teleport visual'),
(27447,5000,0,0,0,0,28012,75,0,29537,0,0,0,0,0,0,0,'Image of Belgaristrasz - say after Varos'), -- 28079 same text
-- Image of Belgaristrasz
(27655,1000,15,12980,0,0,28012,10,0,0,0,0,0,0,0,0,0,'Image of Belgaristrasz - cast teleport visual'),
(27655,5000,0,0,0,0,28012,75,0,29538,0,0,0,0,0,0,0,'Image of Belgaristrasz - say after Urom'), -- 27389 same text
(27655,10000,0,0,0,0,28012,75,0,28081,0,0,0,0,0,0,0,'Image of Belgaristrasz - say after Urom'),
-- Image of Belgaristrasz
(27656,0,10,28012,180000,0,0,0,0,0,0,0,0,1022.39,1051.51,605.62,0.07,'Summon Image of Belgaristrasz'),
(27656,1000,15,12980,0,0,28012,360,0,0,0,0,0,0,0,0,0,'Image of Belgaristrasz - cast teleport visual');

-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES

DELETE FROM `dbscripts_on_relay` WHERE id BETWEEN 20047 AND 20050;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- for Amber Drake - related to vehicle control
(20047,0,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Amber Drake: veh -> player'),
-- for Emerald Drake - related to vehicle control
(20048,0,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Emerald Drake: veh -> player'),
-- for Ruby Drake - related to vehicle control
(20049,0,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Ruby Drake: veh -> player');

-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (957402,957403,957501,957502,957302,957303);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Eternos - only one dragon available for player
(957402,0,17,37815,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957402,0,17,37859,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
(957403,0,17,37860,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957403,0,17,37859,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
-- Belgaristrasz - only one dragon available for player
(957501,0,17,37859,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957501,0,17,37860,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
(957502,0,17,37815,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957502,0,17,37860,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
-- Verdisa - only one dragon available for player
(957302,0,17,37859,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957302,0,17,37815,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item'),
(957303,0,17,37860,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item'),
(957303,0,17,37815,1,0,0,0,0,0,0,0,0,0,0,0,0,'add item');

-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
