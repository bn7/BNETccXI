-----------------------------------
-- Area: EDIT ME
-- VWNM: Laidly Laurence
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_ACC,1950);

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
    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 200);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Laidly Laurence Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_II"), 1) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",1,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_II"),6) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                ally:setVar("WHITE_STRATUM_II", 0);
            end
        end
    end
end;