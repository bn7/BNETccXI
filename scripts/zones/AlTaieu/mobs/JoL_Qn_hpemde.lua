-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'hpemde
-- Jailor of Love Pet version
-----------------------------------


-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,40);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
    mob:addMod(MOD_ACC,225);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_ACC,100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
--[[
    local JoL = GetMobByID(16912848);
    local HPEMDES = JoL:getLocalVar("JoL_Qn_hpemde_Killed");
    JoL:setLocalVar("JoL_Qn_hpemde_Killed", HPEMDES+1);
]]
    local HPEMDES = GetServerVariable("JoL_Qn_hpemde_Killed");
    SetServerVariable("JoL_Qn_hpemde_Killed", HPEMDES+1);
end;