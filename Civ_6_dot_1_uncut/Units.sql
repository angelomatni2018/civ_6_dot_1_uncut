-- Units

UPDATE Units SET BaseMoves = 2 * (BaseMoves + 2) WHERE PurchaseYield = "YIELD_FAITH";
UPDATE Units SET BaseMoves = 2 * (BaseMoves + 1) WHERE PurchaseYield != "YIELD_FAITH";

UPDATE Units SET CostProgressionParam1=6
WHERE UnitType="UNIT_APOSTLE" ;

UPDATE Units SET CostProgressionParam1=4
WHERE UnitType="UNIT_MISSIONARY" ;

UPDATE Units SET CostProgressionParam1=12
WHERE UnitType="UNIT_INQUISITOR" ;

-- Terrains

UPDATE Terrains SET MovementCost = 2
WHERE TerrainType = "TERRAIN_GRASS"
OR TerrainType = "TERRAIN_PLAINS" 
OR TerrainType = "TERRAIN_DESERT" 
OR TerrainType = "TERRAIN_TUNDRA" 
OR TerrainType = "TERRAIN_SNOW" ;

UPDATE Terrains SET MovementCost = 3
WHERE TerrainType = "TERRAIN_GRASS_HILLS"
OR TerrainType = "TERRAIN_PLAINS_HILLS" 
OR TerrainType = "TERRAIN_DESERT_HILLS" 
OR TerrainType = "TERRAIN_TUNDRA_HILLS" 
OR TerrainType = "TERRAIN_SNOW_HILLS" ;

UPDATE Terrains SET MovementCost = 4
WHERE TerrainType = "TERRAIN_GRASS_MOUNTAIN"
OR TerrainType = "TERRAIN_PLAINS_MOUNTAIN" 
OR TerrainType = "TERRAIN_DESERT_MOUNTAIN" 
OR TerrainType = "TERRAIN_TUNDRA_MOUNTAIN" 
OR TerrainType = "TERRAIN_SNOW_MOUNTAIN" ;

UPDATE Terrains SET MovementCost = 2
WHERE TerrainType = "TERRAIN_COAST"
OR TerrainType = "TERRAIN_OCEAN" ;

UPDATE Terrains SET DefenseModifier = 3
WHERE TerrainType = "TERRAIN_GRASS_MOUNTAIN"
OR TerrainType = "TERRAIN_PLAINS_MOUNTAIN" 
OR TerrainType = "TERRAIN_DESERT_MOUNTAIN" 
OR TerrainType = "TERRAIN_TUNDRA_MOUNTAIN" 
OR TerrainType = "TERRAIN_SNOW_MOUNTAIN" ;

UPDATE Terrains SET Impassable = 1
WHERE TerrainType = "TERRAIN_GRASS_MOUNTAIN"
OR TerrainType = "TERRAIN_PLAINS_MOUNTAIN" 
OR TerrainType = "TERRAIN_DESERT_MOUNTAIN" 
OR TerrainType = "TERRAIN_TUNDRA_MOUNTAIN" 
OR TerrainType = "TERRAIN_SNOW_MOUNTAIN" ;

-- Terrain_YieldChanges

INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (1, "TERRAIN_COAST", "YIELD_PRODUCTION");

INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (1, "TERRAIN_DESERT", "YIELD_FOOD");
INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (1, "TERRAIN_DESERT", "YIELD_PRODUCTION");
INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (3, "TERRAIN_DESERT", "YIELD_GOLD");

UPDATE Terrain_YieldChanges SET YieldChange=2
WHERE TerrainType="TERRAIN_DESERT_HILLS"
AND YieldType="YIELD_PRODUCTION";
INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (3, "TERRAIN_DESERT_HILLS", "YIELD_GOLD");

UPDATE Terrain_YieldChanges SET YieldChange=3
WHERE TerrainType="TERRAIN_GRASS"
AND YieldType="YIELD_FOOD";

UPDATE Terrain_YieldChanges SET YieldChange=2
WHERE TerrainType="TERRAIN_GRASS_HILLS"
AND YieldType="YIELD_FOOD";
UPDATE Terrain_YieldChanges SET YieldChange=1
WHERE TerrainType="TERRAIN_GRASS_HILLS"
AND YieldType="YIELD_PRODUCTION";

UPDATE Terrain_YieldChanges SET YieldChange=1
WHERE TerrainType="TERRAIN_PLAINS"
AND YieldType="YIELD_FOOD";
UPDATE Terrain_YieldChanges SET YieldChange=2
WHERE TerrainType="TERRAIN_PLAINS"
AND YieldType="YIELD_PRODUCTION";

DELETE FROM Terrain_YieldChanges
WHERE TerrainType="TERRAIN_PLAINS_HILLS"
AND YieldType="YIELD_FOOD";
UPDATE Terrain_YieldChanges SET YieldChange=3
WHERE TerrainType="TERRAIN_PLAINS_HILLS"
AND YieldType="YIELD_PRODUCTION";

INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (1, "TERRAIN_SNOW", "YIELD_FOOD");
INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (3, "TERRAIN_SNOW", "YIELD_GOLD");
INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (3, "TERRAIN_SNOW_HILLS", "YIELD_GOLD");

UPDATE Terrain_YieldChanges SET YieldChange=2
WHERE TerrainType="TERRAIN_TUNDRA"
AND YieldType="YIELD_FOOD";
INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (3, "TERRAIN_TUNDRA", "YIELD_GOLD");

UPDATE Terrain_YieldChanges SET YieldChange=1
WHERE TerrainType="TERRAIN_TUNDRA_HILLS"
AND YieldType="YIELD_FOOD";
UPDATE Terrain_YieldChanges SET YieldChange=1
WHERE TerrainType="TERRAIN_TUNDRA_HILLS"
AND YieldType="YIELD_PRODUCTION";
INSERT INTO Terrain_YieldChanges
(YieldChange, TerrainType, YieldType)
VALUES (3, "TERRAIN_TUNDRA_HILLS", "YIELD_GOLD");

-- Feature_ValidTerrains

INSERT INTO Feature_ValidTerrains
(FeatureType, TerrainType)
VALUES ("FEATURE_JUNGLE", "TERRAIN_DESERT")
INSERT INTO Feature_ValidTerrains
(FeatureType, TerrainType)
VALUES ("FEATURE_JUNGLE", "TERRAIN_DESERT_HILLS")