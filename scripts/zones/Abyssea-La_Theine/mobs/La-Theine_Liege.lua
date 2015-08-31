-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: La_Theine_Liege
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(PELLUCID_FLY_EYE) == false) then
        killer:addKeyItem(PELLUCID_FLY_EYE);
        killer:messageSpecial(6385, PELLUCID_FLY_EYE);
    end
end;
