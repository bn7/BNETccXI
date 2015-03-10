-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Minax_Bugard
-----------------------------------
require("scripts/zones/Abyssea-Misareaux/textIDs");
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(BLOODSTAINED_BUGARD_FANG) == false) then
        killer:addKeyItem(BLOODSTAINED_BUGARD_FANG);
        killer:messageSpecial(6385, BLOODSTAINED_BUGARD_FANG);
    end
end;

