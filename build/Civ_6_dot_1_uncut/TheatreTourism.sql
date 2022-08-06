-- TheatreTourism
-- Author: angelo
-- DateCreated: 7/30/2022 10:10:08 PM
--------------------------------------------------------------

-- UPDATE Building_YieldChanges SET YieldChange=100
-- WHERE BuildingType="BUILDING_GRANARY" AND YieldType="YIELD_FOOD";
-- INSERT INTO Building_YieldChanges (BuildingType, YieldType, YieldChange)
-- VALUES ("BUILDING_GRANARY", "YIELD_GOLD", 100);
-- INSERT INTO Building_YieldChanges (BuildingType, YieldType, YieldChange)
-- VALUES ("BUILDING_GRANARY", "YIELD_PRODUCTION", 100);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES ("BUILDING_AMPHITHEATER", "THEATER_1_TOURISM");
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES ("THEATER_1_TOURISM", "MODIFIER_PLAYER_DISTRICT_ADJUST_TOURISM_CHANGE");
INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES ("THEATER_1_TOURISM", "Amount", "1");
INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES ("BUILDING_MUSEUM_ART", "THEATER_2_TOURISM");
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES ("THEATER_2_TOURISM", "MODIFIER_PLAYER_DISTRICT_ADJUST_TOURISM_CHANGE");
INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES ("THEATER_2_TOURISM", "Amount", "4");
INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES ("BUILDING_MUSEUM_ARTIFACT", "THEATER_2_TOURISM");
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES ("THEATER_2_TOURISM", "MODIFIER_PLAYER_DISTRICT_ADJUST_TOURISM_CHANGE");
INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES ("THEATER_2_TOURISM", "Amount", "4");
INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES ("BUILDING_BROADCAST_CENTER", "THEATER_3_TOURISM");
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES ("THEATER_3_TOURISM", "MODIFIER_PLAYER_DISTRICT_ADJUST_TOURISM_CHANGE");
INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES ("THEATER_3_TOURISM", "Amount", "16");