-----------------------------------
-- Area: EDIT ME
-- VWNM: Smierc
-----------------------------------
package.loaded["scripts/zones/Tahrongi_Canyon/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Tahrongi_Canyon/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,100);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- var
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then -- comet
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
    elseif (spell:getID() == 503) then -- Kaustra
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(218);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_CURSE_I) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_CURSE_I,40,0,10);
        return SUBEFFECT_CURSE,163,EFFECT_CURSE_I;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 400);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_V)) then -- Smierc Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_V"), 2) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_V"),"WHITE_STRATUM_V",2,true);
        end
        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_V"),3) == true) then
           ally:addKeyItem(WHITE_STRATUM_ABYSSITE_VI);
           ally:delKeyItem(WHITE_STRATUM_ABYSSITE_V);
           ally:setVar("WHITE_STRATUM_V", 0);
           ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
        end
    end;
end;