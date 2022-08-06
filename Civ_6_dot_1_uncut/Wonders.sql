UPDATE Buildings SET Housing=2*Housing;
UPDATE Buildings SET Entertainment=2*Entertainment;
UPDATE Buildings SET CitizenSlots=2*CitizenSlots;
UPDATE Resources SET Frequency=50+5*Frequency
WHERE Frequency>0;
UPDATE Resources SET SeaFrequency=50+5*SeaFrequency
WHERE SeaFrequency>0;

INSERT INTO Improvement_ValidBuildUnits
(ImprovementType, UnitType, ConsumesCharge, ValidRepairOnly)
VALUES ("IMPROVEMENT_MOUNTAIN_TUNNEL", "UNIT_BUILDER", 1, 0);
INSERT INTO Route_ValidBuildUnits (RouteType, UnitType)
VALUES ("ROUTE_ANCIENT_ROAD", "UNIT_BUILDER");
INSERT INTO Route_ValidBuildUnits (RouteType, UnitType)
VALUES ("ROUTE_MEDIEVAL_ROAD", "UNIT_BUILDER");
INSERT INTO Route_ValidBuildUnits (RouteType, UnitType)
VALUES ("ROUTE_INDUSTRIAL_ROAD", "UNIT_BUILDER");
INSERT INTO Route_ValidBuildUnits (RouteType, UnitType)
VALUES ("ROUTE_MODERN_ROAD", "UNIT_BUILDER");
INSERT INTO Route_ValidBuildUnits (RouteType, UnitType)
VALUES ("ROUTE_RAILROAD", "UNIT_BUILDER");

UPDATE Units SET BuildCharges=5
WHERE UnitType="UNIT_MILITARY_ENGINEER";

UPDATE GlobalParameters SET Value=4
WHERE Name="WORLD_CONGRESS_SUZERIAN_FAVOR_PER_TURN";
UPDATE GlobalParameters SET Value=2
WHERE Name="WORLD_CONGRESS_ALLIANCE_FAVOR_PER_TURN";
UPDATE GlobalParameters SET Value=1
WHERE Name="WORLD_CONGRESS_TRADE_PARTNER_FAVOR_PER_TURN";
UPDATE GlobalParameters SET Value=20
WHERE Name="WORLD_CONGRESS_MAX_TIME_BETWEEN_MEETINGS";