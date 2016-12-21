-----------------------------------
-- Area: Legion
-- Lofty Adamatoise
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1); -- Invincible
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);

    -- addMod
    mob:addMod(MOD_EVA,-115);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_REGEN,25);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Lofty_Adamantoise_2hr = mob:getLocalVar("Lofty_Adamantoise_2hr");

    if (mob:getHPP() <= 10) then
        if (Lofty_Adamantoise_2hr_Used == 0) then
            mob:useMobAbility(694); -- Invincible
            mob:setLocalVar("Lofty_Adamantoise_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 10);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Ferromantoise
end;
