-- clean up dbscripts_on_creature_movement Scripts
-- SELECT * FROM `dbscripts_on_creature_movement` WHERE command =0 AND datalong2 > 0; -- should not be any 
UPDATE dbscripts_on_creature_movement SET datalong2 = 0 WHERE command = 0 and id IN (406801,566201,566201,570201,570201,570201,570201,570201,570201,570201,570201,570201,570201,570201,570201,1946601);
