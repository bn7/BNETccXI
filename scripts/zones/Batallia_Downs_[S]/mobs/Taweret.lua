-----------------------------------
-- Area: EDIT ME
-- VWNM: Taweret
-----------------------------------

package.loaded["scripts/zones/Batallia_Downs_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Batallia_Downs_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
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

    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 100);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Taweret Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM"), 5) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM"),"WHITE_STRATUM",5,true);
        end
        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM"),6) == true) then
           ally:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
           ally:delKeyItem(WHITE_STRATUM_ABYSSITE);
           ally:setVar("WHITE_STRATUM", 0);
           ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_II);
        end
    end;
    
    local RND1 = math.random(1,8);
        if (RND1 == 1) then
            SetDropRate(9625,0,8919,50); -- Ifritear
            SetDropRate(9625,0,8920,0); -- Leviatear    
            SetDropRate(9625,0,8921,0); -- Ramutear    
            SetDropRate(9625,0,8922,0); -- Garutear    
            SetDropRate(9625,0,8923,0); -- Titatear    
            SetDropRate(9625,0,8924,0); -- Shivatear   
            SetDropRate(9625,0,8925,0); -- Carbutear
            SetDropRate(9625,0,8926,0); -- Fenritear
        elseif (RND1 == 2) then
            SetDropRate(9625,0,8919,0); -- Ifritear
            SetDropRate(9625,0,8920,50); -- Leviatear    
            SetDropRate(9625,0,8921,0); -- Ramutear    
            SetDropRate(9625,0,8922,0); -- Garutear    
            SetDropRate(9625,0,8923,0); -- Titatear    
            SetDropRate(9625,0,8924,0); -- Shivatear   
            SetDropRate(9625,0,8925,0); -- Carbutear
            SetDropRate(9625,0,8926,0); -- Fenritear
        elseif (RND1 == 3) then
            SetDropRate(9625,0,8919,0); -- Ifritear
            SetDropRate(9625,0,8920,0); -- Leviatear    
            SetDropRate(9625,0,8921,50); -- Ramutear    
            SetDropRate(9625,0,8922,0); -- Garutear    
            SetDropRate(9625,0,8923,0); -- Titatear    
            SetDropRate(9625,0,8924,0); -- Shivatear   
            SetDropRate(9625,0,8925,0); -- Carbutear
            SetDropRate(9625,0,8926,0); -- Fenritear
        elseif (RND1 == 4) then
            SetDropRate(9625,0,8919,0); -- Ifritear
            SetDropRate(9625,0,8920,0); -- Leviatear    
            SetDropRate(9625,0,8921,0); -- Ramutear    
            SetDropRate(9625,0,8922,50); -- Garutear    
            SetDropRate(9625,0,8923,0); -- Titatear    
            SetDropRate(9625,0,8924,0); -- Shivatear   
            SetDropRate(9625,0,8925,0); -- Carbutear
            SetDropRate(9625,0,8926,0); -- Fenritear
        elseif (RND1 == 5) then
            SetDropRate(9625,0,8919,0); -- Ifritear
            SetDropRate(9625,0,8920,0); -- Leviatear    
            SetDropRate(9625,0,8921,0); -- Ramutear    
            SetDropRate(9625,0,8922,0); -- Garutear    
            SetDropRate(9625,0,8923,50); -- Titatear    
            SetDropRate(9625,0,8924,0); -- Shivatear   
            SetDropRate(9625,0,8925,0); -- Carbutear
            SetDropRate(9625,0,8926,0); -- Fenritear
        elseif (RND1 == 6) then
            SetDropRate(9625,0,8919,0); -- Ifritear
            SetDropRate(9625,0,8920,0); -- Leviatear    
            SetDropRate(9625,0,8921,0); -- Ramutear    
            SetDropRate(9625,0,8922,0); -- Garutear    
            SetDropRate(9625,0,8923,0); -- Titatear    
            SetDropRate(9625,0,8924,50); -- Shivatear   
            SetDropRate(9625,0,8925,0); -- Carbutear
            SetDropRate(9625,0,8926,0); -- Fenritear
        elseif (RND1 == 7) then
            SetDropRate(9625,0,8919,0); -- Ifritear
            SetDropRate(9625,0,8920,0); -- Leviatear    
            SetDropRate(9625,0,8921,0); -- Ramutear    
            SetDropRate(9625,0,8922,0); -- Garutear    
            SetDropRate(9625,0,8923,0); -- Titatear    
            SetDropRate(9625,0,8924,0); -- Shivatear   
            SetDropRate(9625,0,8925,50); -- Carbutear
            SetDropRate(9625,0,8926,0); -- Fenritear
        elseif (RND1 == 8) then
            SetDropRate(9625,0,8919,0); -- Ifritear
            SetDropRate(9625,0,8920,0); -- Leviatear    
            SetDropRate(9625,0,8921,0); -- Ramutear    
            SetDropRate(9625,0,8922,0); -- Garutear    
            SetDropRate(9625,0,8923,0); -- Titatear    
            SetDropRate(9625,0,8924,0); -- Shivatear   
            SetDropRate(9625,0,8925,0); -- Carbutear
            SetDropRate(9625,0,8926,50); -- Fenritear       
    end
    
end;