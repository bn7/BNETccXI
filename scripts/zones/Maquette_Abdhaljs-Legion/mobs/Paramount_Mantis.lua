-----------------------------------
-- Area: Legion
-- Paramount_Mantis
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 10);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_UFASTCAST, 15);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_ACC,1325);
end;

-----------------------------------

-- onMobEngaged Action
-----------------------------------

-- function onMobEngaged(mob, target)
-- end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Paramount_Mantis_2hr_Used = 0;
    if (mob:getLocalVar("Paramount_Mantis_2hr_Used") ~= nil) then
        Paramount_Mantis_2hr_Used = mob:getLocalVar("Paramount_Mantis_2hr_Used");
    end

    if (mob:getHPP() <= 3) then
        if (Paramount_Mantis_2hr_Used == 2) then
            mob:useMobAbility(475); -- MG
            mob:setLocalVar("Paramount_Mantis_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 30) then
        if (Paramount_Mantis_2hr_Used == 1) then
            mob:useMobAbility(434); -- HF
            mob:setLocalVar("Paramount_Mantis_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Paramount_Mantis_2hr_Used == 0) then
            mob:useMobAbility(434); -- HS
            mob:setLocalVar("Paramount_Mantis_2hr_Used", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------
-- function onAdditionalEffect(mob,target,damage)
-- end;

-----------------------------------
-- onMagicHit
-----------------------------------

-- function onMagicHit(caster, target, spell)
-- end

-----------------------------------
-- onSpikesDamage
-----------------------------------

-- function onSpikesDamage(mob,target,damage)
-- end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    local mobAct1 = GetMobAction(17526852);
    local mobAct2 = GetMobAction(17526851);
    local mobAct3 = GetMobAction(17526854);
    killer:addCurrency("legion_point", 150);

    if (mobAct1 == ACTION_NONE or mobAct1 == ACTION_SPAWN) and (mobAct2 == ACTION_NONE or mobAct2 == ACTION_SPAWN) then
        if (mobAct3 == ACTION_NONE or mobAct3 == ACTION_SPAWN) then
            SpawnMob(17526856, 300); -- Paramount_Botulus Spawn
        end
    end
end;