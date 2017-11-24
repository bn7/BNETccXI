-----------------------------------
--
-- Zone: King_Ranperres_Tomb (190)
--
-----------------------------------
package.loaded["scripts/zones/King_Ranperres_Tomb/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/King_Ranperres_Tomb/TextIDs");
require("scripts/zones/King_Ranperres_Tomb/MobIDs");
require("scripts/globals/conquest");
require("scripts/globals/zone");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
    zone:registerRegion(1,-84.302,6.5,-120.997,-77,7.5,-114);  -- Used for stairs teleport -85.1,7,-119.9

    UpdateNMSpawnPoint(VRTRA);
    --[[
    GetMobByID(VRTRA):setRespawnTime(math.random(86400, 259200));
    ]]
    GetMobByID(VRTRA):setRespawnTime(math.random(900, 10800));

    UpdateNMSpawnPoint(BARBASTELLE);
    GetMobByID(BARBASTELLE):setRespawnTime(math.random(1800,5400));

    UpdateTreasureSpawnPoint(17555955);
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
    local cs = -1;
    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        player:setPos(242.012,5.305,340.059,121);
    end
    return cs;
end;

-----------------------------------
-- onConquestUpdate
-----------------------------------

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

-----------------------------------
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
    if (region:GetRegionID() == 1) then
        player:startEvent(9);
    end
end;

-----------------------------------
-- onRegionLeave
-----------------------------------

function onRegionLeave(player,region)
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;
