-- GameData1
-- Author: angel
-- DateCreated: 8/1/2022 11:30:48 PM
--------------------------------------------------------------
-- UPDATE Technologies SET Cost = Cost * 1.1
-- WHERE EraType = "ERA_ANCIENT"
-- OR EraType = "ERA_CLASSICAL";

UPDATE Technologies SET Cost = Cost * 1.1
WHERE EraType = "ERA_MEDIEVAL"
OR EraType = "ERA_RENAISSANCE";

UPDATE Technologies SET Cost = Cost * 1.2
WHERE EraType = "ERA_INDUSTRIAL"
OR EraType = "ERA_MODERN";

UPDATE Technologies SET Cost = Cost * 1.3
WHERE EraType = "ERA_ATOMIC"
OR EraType = "ERA_INFORMATION";

UPDATE Technologies SET Cost = Cost * 1.5
WHERE EraType = "ERA_FUTURE";