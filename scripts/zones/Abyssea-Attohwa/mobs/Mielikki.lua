-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Mielikki
-----------------------------------
require("scripts/zones/Abyssea-Attohwa/textIDs");
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
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(JADE_ABYSSITE_OF_SOJOURN) == false) then
        killer:addKeyItem(JADE_ABYSSITE_OF_SOJOURN);
        killer:messageSpecial(6385, JADE_ABYSSITE_OF_SOJOURN);
    end
end;
