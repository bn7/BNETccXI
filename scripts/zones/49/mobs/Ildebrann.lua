-----------------------------------
-- Area: VoiddWatch NM
-- NPC:
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:addMod(MOD_DMGMAGIC, -128);
    mob:addMod(MOD_DMGRANGE, -50);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);
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
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_FIRE_AFFINITY,5);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,25);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_HUMANOID_KILLER, 5);
    mob:setMod(MOD_FIRE_ABSORB, 100);
    mob:setMod(MOD_TERRORRES, 1000);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    --[[if (os.time(t) > depopTime) then
       DespawnMob(mob:getID());
    end
    local popTime = mob:getLocalVar("lastPetPop");

    if (os.time() - popTime > 240) then
        local alreadyPopped = false;
        for Helper = mob:getID()+1, mob:getID()+2 do
            if (alreadyPopped == true) then
                break;
            else
                if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
                    SpawnMob(Helper, 300):updateEnmity(target);
                    mob:setLocalVar("lastPetPop", os.time());
                    alreadyPopped = true;
                end
            end
        end
    end



    if (mob:AnimationSub() == 1) then
        if (GetMobAction(Helper) == ACTION_NONE or GetMobAction(Helper) == ACTION_SPAWN) then
           mob:useMobAbility(1026);
        end
    elseif (mob:AnimationSub() == 2) then
        if (GetMobAction(Helper) == ACTION) then
           mob:AnimationSub(1); -- fly
           mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
           mob:SetMobSkillAttack(true);
        end
    elseif (mob:AnimationSub() == 0) then
        if (GetMobAction(Helper) == ACTION) then
           mob:AnimationSub(1); -- fly
           mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
           mob:SetMobSkillAttack(true);
        end
    end ]]
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    -- DespawnMob(mob:getID()+1);
    -- DespawnMob(mob:getID()+2);
end;