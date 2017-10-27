-----------------------------------
-- Area: Yuhtunga Jungle
--  NM:  Mischievous Micholas
-----------------------------------

require("scripts/globals/fieldsofvalor");
require("scripts/zones/Yuhtunga_Jungle/MobIDs");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    checkRegime(player,mob,126,1);
    checkRegime(player,mob,128,1);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    mob:setLocalVar("repop", os.time() + 3600);
    DisallowRespawn(mob:getID(), true);
    DisallowRespawn(MISCHIEVOUS_MICHOLAS_PH, false);
    GetMobByID(MISCHIEVOUS_MICHOLAS_PH):setRespawnTime(GetMobRespawnTime(MISCHIEVOUS_MICHOLAS_PH));

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Custom Trial Check
    cTrialProgress(player, 1, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;
