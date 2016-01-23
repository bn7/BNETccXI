-----------------------------------
-- Area: ?
-- VWNM: Lorbulcrud
-----------------------------------
package.loaded["scripts/zones/Meriphataud_Mountains_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Meriphataud_Mountains_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
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
    mob:setMod(MOD_MATT,135);

    -- Vars
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
    local depopTime = mob:getLocalVar("depopTime");

    if (os.time(t) > depopTime) then
        DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(JADE_STRATUM_ABYSSITE_III)) then -- Akupara Kill
        if (ally:getMaskBit(ally:getVar("JADE_STRATUM_III"), 1) == false) then
            ally:setMaskBit(ally:getVar("JADE_STRATUM_III"),"JADE_STRATUM_III",1,true);
        end

        if (ally:isMaskFull(ally:getVar("JADE_STRATUM_III"),2) == true) then
            ally:addKeyItem(JADE_STRATUM_ABYSSITE_IV);
            ally:delKeyItem(JADE_STRATUM_ABYSSITE_III);
            ally:setVar("JADE_STRATUM_III", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_IV);
        end
    end

    ally:addCurrency("bayld", 75);
    ally:addExp(10000);
    
    local RND1 = math.random(1,8);
        if (RND1 == 1) then
            SetDropRate(9614,0,8919,50); -- Ifritear
            SetDropRate(9614,0,8920,0); -- Leviatear    
            SetDropRate(9614,0,8921,0); -- Ramutear    
            SetDropRate(9614,0,8922,0); -- Garutear    
            SetDropRate(9614,0,8923,0); -- Titatear    
            SetDropRate(9614,0,8924,0); -- Shivatear   
            SetDropRate(9614,0,8925,0); -- Carbutear
            SetDropRate(9614,0,8926,0); -- Fenritear
        elseif (RND1 == 2) then
            SetDropRate(9614,0,8919,0); -- Ifritear
            SetDropRate(9614,0,8920,50); -- Leviatear    
            SetDropRate(9614,0,8921,0); -- Ramutear    
            SetDropRate(9614,0,8922,0); -- Garutear    
            SetDropRate(9614,0,8923,0); -- Titatear    
            SetDropRate(9614,0,8924,0); -- Shivatear   
            SetDropRate(9614,0,8925,0); -- Carbutear
            SetDropRate(9614,0,8926,0); -- Fenritear
        elseif (RND1 == 3) then
            SetDropRate(9614,0,8919,0); -- Ifritear
            SetDropRate(9614,0,8920,0); -- Leviatear    
            SetDropRate(9614,0,8921,50); -- Ramutear    
            SetDropRate(9614,0,8922,0); -- Garutear    
            SetDropRate(9614,0,8923,0); -- Titatear    
            SetDropRate(9614,0,8924,0); -- Shivatear   
            SetDropRate(9614,0,8925,0); -- Carbutear
            SetDropRate(9614,0,8926,0); -- Fenritear
        elseif (RND1 == 4) then
            SetDropRate(9614,0,8919,0); -- Ifritear
            SetDropRate(9614,0,8920,0); -- Leviatear    
            SetDropRate(9614,0,8921,0); -- Ramutear    
            SetDropRate(9614,0,8922,50); -- Garutear    
            SetDropRate(9614,0,8923,0); -- Titatear    
            SetDropRate(9614,0,8924,0); -- Shivatear   
            SetDropRate(9614,0,8925,0); -- Carbutear
            SetDropRate(9614,0,8926,0); -- Fenritear
        elseif (RND1 == 5) then
            SetDropRate(9614,0,8919,0); -- Ifritear
            SetDropRate(9614,0,8920,0); -- Leviatear    
            SetDropRate(9614,0,8921,0); -- Ramutear    
            SetDropRate(9614,0,8922,0); -- Garutear    
            SetDropRate(9614,0,8923,50); -- Titatear    
            SetDropRate(9614,0,8924,0); -- Shivatear   
            SetDropRate(9614,0,8925,0); -- Carbutear
            SetDropRate(9614,0,8926,0); -- Fenritear
        elseif (RND1 == 6) then
            SetDropRate(9614,0,8919,0); -- Ifritear
            SetDropRate(9614,0,8920,0); -- Leviatear    
            SetDropRate(9614,0,8921,0); -- Ramutear    
            SetDropRate(9614,0,8922,0); -- Garutear    
            SetDropRate(9614,0,8923,0); -- Titatear    
            SetDropRate(9614,0,8924,50); -- Shivatear   
            SetDropRate(9614,0,8925,0); -- Carbutear
            SetDropRate(9614,0,8926,0); -- Fenritear
        elseif (RND1 == 7) then
            SetDropRate(9614,0,8919,0); -- Ifritear
            SetDropRate(9614,0,8920,0); -- Leviatear    
            SetDropRate(9614,0,8921,0); -- Ramutear    
            SetDropRate(9614,0,8922,0); -- Garutear    
            SetDropRate(9614,0,8923,0); -- Titatear    
            SetDropRate(9614,0,8924,0); -- Shivatear   
            SetDropRate(9614,0,8925,50); -- Carbutear
            SetDropRate(9614,0,8926,0); -- Fenritear
        elseif (RND1 == 8) then
            SetDropRate(9614,0,8919,0); -- Ifritear
            SetDropRate(9614,0,8920,0); -- Leviatear    
            SetDropRate(9614,0,8921,0); -- Ramutear    
            SetDropRate(9614,0,8922,0); -- Garutear    
            SetDropRate(9614,0,8923,0); -- Titatear    
            SetDropRate(9614,0,8924,0); -- Shivatear   
            SetDropRate(9614,0,8925,0); -- Carbutear
            SetDropRate(9614,0,8926,50); -- Fenritear       
    end
    
end;