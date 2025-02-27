-- Twilight Firesworn 25863
UPDATE creature_template SET Faction = 128, EquipmentTemplateId = 127 WHERE entry = 25863;
-- Twilight Flameguard 25866
UPDATE creature_template SET Faction = 128, EquipmentTemplateId = 160 WHERE entry = 25866;
-- Twilight Speaker Viktor 25924
UPDATE creature_template SET Faction = 128, EquipmentTemplateId = 2534 WHERE entry = 25924;
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 2534;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2534, 32360, 0, 0);

-- Festival Loremaster 16817
-- missing gossip added
UPDATE creature_template SET GossipMenuId = 7326 WHERE entry = 16817;
DELETE FROM gossip_menu WHERE entry IN (7326);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7326, 8703, 0, 0);

-- q.11955 'Ahune, the Frost Lord'
-- q.12012 'Inform the Elder' - must be done FIRST
UPDATE quest_template SET PrevQuestId=11164 WHERE entry = 11955;

-- q.11816 'Honor the Flame'
UPDATE quest_template SET OfferRewardText = 'Honor the Elwynn Forest flame.' WHERE entry = 11816;

-- most of the 'Honor the Flame' quests were missing OfferRewardText - fixed
UPDATE quest_template SET OfferRewardText = 'Honor the Westfall flame.' WHERE entry = 11583;
UPDATE quest_template SET OfferRewardText = 'Honor the Silverpine Forest flame.' WHERE entry = 11584;
UPDATE quest_template SET OfferRewardText = 'Honor the Arathi Highlands flame.' WHERE entry = 11804;
UPDATE quest_template SET OfferRewardText = 'Honor the Ashenvale flame.' WHERE entry = 11805;
UPDATE quest_template SET OfferRewardText = 'Honor the Azuremyst Isle flame.' WHERE entry = 11806;
UPDATE quest_template SET OfferRewardText = 'Honor the Blade\'s Edge Mountains flame!' WHERE entry = 11807;
UPDATE quest_template SET OfferRewardText = 'Honor the Blasted Lands flame.' WHERE entry = 11808;
UPDATE quest_template SET OfferRewardText = 'Honor the Bloodmyst Isle flame.' WHERE entry = 11809;
UPDATE quest_template SET OfferRewardText = 'Honor the Burning Steppes flame.' WHERE entry = 11810;
UPDATE quest_template SET OfferRewardText = 'Honor the Darkshore flame.' WHERE entry = 11811;
UPDATE quest_template SET OfferRewardText = 'Honor the Desolace flame.' WHERE entry = 11812;
UPDATE quest_template SET OfferRewardText = 'Honor the Dun Morogh flame.' WHERE entry = 11813;
UPDATE quest_template SET OfferRewardText = 'Honor the Duskwood flame.' WHERE entry = 11814;
UPDATE quest_template SET OfferRewardText = 'Honor the Dustwallow Marsh flame.' WHERE entry = 11815;
UPDATE quest_template SET OfferRewardText = 'Honor the Elwynn Forest flame.' WHERE entry = 11816;
UPDATE quest_template SET OfferRewardText = 'Honor the Feralas flame.' WHERE entry = 11817;
UPDATE quest_template SET OfferRewardText = 'Honor the Hellfire Peninsula flame.' WHERE entry = 11818;
UPDATE quest_template SET OfferRewardText = 'Honor the Hillsbrad Foothills flame.' WHERE entry = 11819;
UPDATE quest_template SET OfferRewardText = 'Honor the Loch Modan flame.' WHERE entry = 11820;
UPDATE quest_template SET OfferRewardText = 'Honor the Nagrand flame!' WHERE entry = 11821;
UPDATE quest_template SET OfferRewardText = 'Honor the Redridge Mountains flame.' WHERE entry = 11822;
UPDATE quest_template SET OfferRewardText = 'Honor the Shadowmoon Valley flame.' WHERE entry = 11823;
UPDATE quest_template SET OfferRewardText = 'Honor the Teldrassil flame.' WHERE entry = 11824;
UPDATE quest_template SET OfferRewardText = 'Honor the Terokkar Forest flame.' WHERE entry = 11825;
UPDATE quest_template SET OfferRewardText = 'Honor the Hinterlands flame.' WHERE entry = 11826;
UPDATE quest_template SET OfferRewardText = 'Honor the Western Plaguelands flame.' WHERE entry = 11827;
UPDATE quest_template SET OfferRewardText = 'Honor the Wetlands flame.' WHERE entry = 11828;
UPDATE quest_template SET OfferRewardText = 'Honor the Zangarmarsh flame.' WHERE entry = 11829;
UPDATE quest_template SET OfferRewardText = 'Honor the Netherstorm flame.' WHERE entry = 11830;
UPDATE quest_template SET OfferRewardText = 'Honor the Silithus flame.' WHERE entry = 11831;
UPDATE quest_template SET OfferRewardText = 'Honor the Stranglethorn Vale flame.' WHERE entry = 11832;
UPDATE quest_template SET OfferRewardText = 'Honor the Tanaris flame.' WHERE entry = 11833;
UPDATE quest_template SET OfferRewardText = 'Honor the Winterspring flame.' WHERE entry = 11834;
UPDATE quest_template SET OfferRewardText = 'Honor the Netherstorm flame.' WHERE entry = 11835;
UPDATE quest_template SET OfferRewardText = 'Honor the Silithus flame.' WHERE entry = 11836;
UPDATE quest_template SET OfferRewardText = 'Honor the Stranglethorn Vale flame.' WHERE entry = 11837;
UPDATE quest_template SET OfferRewardText = 'Honor the Tanaris flame! ' WHERE entry = 11838;
UPDATE quest_template SET OfferRewardText = 'Honor the Winterspring flame.' WHERE entry = 11839;
UPDATE quest_template SET OfferRewardText = 'Honor the Arathi Highlands flame.' WHERE entry = 11840;
UPDATE quest_template SET OfferRewardText = 'Honor the Ashenvale flame.' WHERE entry = 11841;
UPDATE quest_template SET OfferRewardText = 'Honor the Badlands flame.' WHERE entry = 11842;
UPDATE quest_template SET OfferRewardText = 'Honor the Blades Edge Mountains flame!' WHERE entry = 11843;
UPDATE quest_template SET OfferRewardText = 'Honor the Burning Steppes flame.' WHERE entry = 11844;
UPDATE quest_template SET OfferRewardText = 'Honor the Desolace flame.' WHERE entry = 11845;
UPDATE quest_template SET OfferRewardText = 'Honor the Durotar flame.' WHERE entry = 11846;
UPDATE quest_template SET OfferRewardText = 'Honor the Dustwallow Marsh flame.' WHERE entry = 11847;
UPDATE quest_template SET OfferRewardText = 'Honor the Eversong Woods flame.' WHERE entry = 11848;
UPDATE quest_template SET OfferRewardText = 'Honor the Feralas flame.' WHERE entry = 11849;
UPDATE quest_template SET OfferRewardText = 'Honor the Ghostlands flame.' WHERE entry = 11850;
UPDATE quest_template SET OfferRewardText = 'Honor the Hellfire Peninsula flame.' WHERE entry = 11851;
UPDATE quest_template SET OfferRewardText = 'Honor the Mulgore flame.' WHERE entry = 11852;
UPDATE quest_template SET OfferRewardText = 'Honor the Hillsbrad Foothills flame.' WHERE entry = 11853;
UPDATE quest_template SET OfferRewardText = 'Honor the Nagrand flame.' WHERE entry = 11854;
UPDATE quest_template SET OfferRewardText = 'Honor the Shadowmoon Valley flame.' WHERE entry = 11855;
UPDATE quest_template SET OfferRewardText = 'Honor the Stonetalon Mountains flame.' WHERE entry = 11856;
UPDATE quest_template SET OfferRewardText = 'Honor the Swamp of Sorrows flame.' WHERE entry = 11857;
UPDATE quest_template SET OfferRewardText = 'Honor the Terokkar Forest flame.' WHERE entry = 11858;
UPDATE quest_template SET OfferRewardText = 'Honor the Barrens flame.' WHERE entry = 11859;
UPDATE quest_template SET OfferRewardText = 'Honor the Hinterlands flame.' WHERE entry = 11860;
UPDATE quest_template SET OfferRewardText = 'Honor the Thousand Needles flame.' WHERE entry = 11861;
UPDATE quest_template SET OfferRewardText = 'Honor the Tirisfal Glades flame.' WHERE entry = 11862;
UPDATE quest_template SET OfferRewardText = 'Honor the Zangarmarsh flame.' WHERE entry = 11863;
-- Wotlk
UPDATE quest_template SET OfferRewardText = 'Honor the Borean Tundra flame.' WHERE entry = 13485;
UPDATE quest_template SET OfferRewardText = 'Honor the Sholazar Basin flame.' WHERE entry = 13486;
UPDATE quest_template SET OfferRewardText = 'Honor the Dragonblight flame.' WHERE entry = 13487;
UPDATE quest_template SET OfferRewardText = 'Honor the Howling Fjord flame.' WHERE entry = 13488;
UPDATE quest_template SET OfferRewardText = 'Honor the Grizzly Hills flame.' WHERE entry = 13489;
UPDATE quest_template SET OfferRewardText = 'Honor the Storm Peaks flame.' WHERE entry = 13490;
UPDATE quest_template SET OfferRewardText = 'Honor the Crystalsong Forest flame.' WHERE entry = 13491;
UPDATE quest_template SET OfferRewardText = 'Honor the Zul\'Drak flame.' WHERE entry = 13492;
UPDATE quest_template SET OfferRewardText = 'Honor the Borean Tundra flame.' WHERE entry = 13493;
UPDATE quest_template SET OfferRewardText = 'Honor the Sholazar Basin flame.' WHERE entry = 13494;
UPDATE quest_template SET OfferRewardText = 'Honor the Dragonblight flame.' WHERE entry = 13495;
UPDATE quest_template SET OfferRewardText = 'Honor the Howling Fjord flame.' WHERE entry = 13496;
UPDATE quest_template SET OfferRewardText = 'Honor the Grizzly Hills flame.' WHERE entry = 13497;
UPDATE quest_template SET OfferRewardText = 'Honor the Storm Peaks flame.' WHERE entry = 13498;
UPDATE quest_template SET OfferRewardText = 'Honor the Crystalsong Forest flame.' WHERE entry = 13499;
UPDATE quest_template SET OfferRewardText = 'Honor the Zul\'Drak flame.' WHERE entry = 13500;

-- most of the 'Desecrate this Fire! quests had wrong RequiredRaces & missing OfferRewardText - fixed
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Silverpine bonfire!' WHERE entry = 11580;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Westfall bonfire!' WHERE entry = 11581;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Arathi Highlands bonfire!' WHERE entry = 11732;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Ashenvale bonfire!' WHERE entry = 11734;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Azuremyst Isle bonfire!' WHERE entry = 11735;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Blade\'s Edge Mountains bonfire!' WHERE entry = 11736;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Blasted Lands bonfire!' WHERE entry = 11737;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Bloodmyst Isle bonfire!' WHERE entry = 11738;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Burning Steppes bonfire!' WHERE entry = 11739;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Darkshore bonfire!' WHERE entry = 11740;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Desolace bonfire!' WHERE entry = 11741;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Dun Morogh bonfire!' WHERE entry = 11742;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Duskwood bonfire!' WHERE entry = 11743;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Dustwallow Marsh bonfire!' WHERE entry = 11744;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Elywnn Forest bonfire!' WHERE entry = 11745;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Feralas bonfire!' WHERE entry = 11746;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Hellfire Peninsula bonfire!' WHERE entry = 11747;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Hillsbrad Foothills bonfire!' WHERE entry = 11748;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Loch Modan bonfire!' WHERE entry = 11749;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Nagrand bonfire!' WHERE entry = 11750;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Redridge Mountains bonfire!' WHERE entry = 11751;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Shadowmoon Valley bonfire!' WHERE entry = 11752;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Teldrassil bonfire!' WHERE entry = 11753;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Terokkar Forest bonfire!' WHERE entry = 11754;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Hinterlands bonfire!' WHERE entry = 11755;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Western Plaguelands bonfire!' WHERE entry = 11756;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Wetlands bonfire!' WHERE entry = 11757;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Zangarmarsh bonfire!' WHERE entry = 11758;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Netherstorm bonfire!' WHERE entry = 11759;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Silithus bonfire!' WHERE entry = 11760;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Stranglethorn Vale bonfire!' WHERE entry = 11761;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Tanaris bonfire!' WHERE entry = 11762;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Winterspring bonfire!' WHERE entry = 11763;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Arathi Highlands bonfire!' WHERE entry = 11764;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Ashenvale bonfire!' WHERE entry = 11765;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Badlands bonfire!' WHERE entry = 11766;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Blade\'s Edge Mountains bonfire!' WHERE entry = 11767;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Burning Steppes bonfire!' WHERE entry = 11768;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Desolace bonfire!' WHERE entry = 11769;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Durotar bonfire!' WHERE entry = 11770;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Dustwallow Marsh bonfire!' WHERE entry = 11771;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Eversong Woods bonfire!' WHERE entry = 11772;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Feralas bonfire!' WHERE entry = 11773;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Ghostlands bonfire!' WHERE entry = 11774;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Hellfire Peninsula bonfire!' WHERE entry = 11775;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Hillsbrad Foothills bonfire!' WHERE entry = 11776;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Mulgore bonfire!' WHERE entry = 11777;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Nagrand bonfire!' WHERE entry = 11778;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Shadowmoon Valley bonfire!' WHERE entry = 11779;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Stonetalon Mountains bonfire!' WHERE entry = 11780;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Swamp of Sorrows bonfire!' WHERE entry = 11781;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Terokkar Forest bonfire!' WHERE entry = 11782;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Barrens bonfire!' WHERE entry = 11783;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Hinterlands bonfire!' WHERE entry = 11784;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Thousand Needles bonfire!' WHERE entry = 11785;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Tirisfal Glades bonfire!' WHERE entry = 11786;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Zangarmarsh bonfire!' WHERE entry = 11787;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Netherstorm bonfire!' WHERE entry = 11799;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Silithus bonfire!' WHERE entry = 11800;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Stranglethorn Vale bonfire!' WHERE entry = 11801;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Tanaris bonfire!' WHERE entry = 11802;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Winterspring bonfire!' WHERE entry = 11803;
-- wotlk
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Borean Tundra bonfire!' WHERE entry = 13440;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Borean Tundra bonfire!' WHERE entry = 13441;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Sholazar Basin bonfire!' WHERE entry = 13442;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Dragonblight bonfire!' WHERE entry = 13443;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Howling Fjord bonfire!' WHERE entry = 13444;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Grizzly Hills bonfire!' WHERE entry = 13445;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Storm Peaks bonfire!' WHERE entry = 13446;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Crystalsong Forest bonfire!' WHERE entry = 13447;
UPDATE quest_template SET RequiredRaces = 690, OfferRewardText = 'Desecrate the Alliance\'s Zul\'Drak bonfire!' WHERE entry = 13449;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Sholazar Basin bonfire!' WHERE entry = 13450;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Dragonblight bonfire!' WHERE entry = 13451;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Howling Fjord bonfire!' WHERE entry = 13453;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Grizzly Hills bonfire!' WHERE entry = 13454;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Storm Peaks bonfire!' WHERE entry = 13455;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Crystalsong Forest bonfire!' WHERE entry = 13457;
UPDATE quest_template SET RequiredRaces = 1101, OfferRewardText = 'Desecrate the Horde\'s Zul\'Drak bonfire!' WHERE entry = 13458;
