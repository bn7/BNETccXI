-----------------------------------
-- Area: Palborough Mines
--  NM : Zi'Ghi Boneeater
-----------------------------------
require("scripts/zones/Palborough_Mines/MobIDs");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    -- Set ToD, Deter NM, set placeholder respawn time, set Placeholder back to normal
    SetServerVariable("[ToD]Zi_Ghi_Boneeater", os.time() + 3600); -- 1 hour
    DeterMob(mob:getID(), true);
    GetMobByID(Zi_Ghi_Boneeater_PH):setRespawnTime(GetMobRespawnTime(Zi_Ghi_Boneeater_PH));
    DeterMob(Zi_Ghi_Boneeater_PH, false);
end;
