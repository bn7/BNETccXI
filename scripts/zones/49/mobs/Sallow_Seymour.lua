-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Sallow_Seymour
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_DRAW_IN, 2); -- Alliance Draw In
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,900);
    mob:setMod(MOD_MATT,115);

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_ACC,180);
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target)
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(2389); -- Mud_Stream
    mob:addTP(100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;