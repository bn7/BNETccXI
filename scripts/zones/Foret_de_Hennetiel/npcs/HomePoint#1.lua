-----------------------------------
-- Area: Foret de Hennetiel
-- NPC:  HomePoint#1
-- !pos -193 -0.5 -252 262
-----------------------------------

package.loaded["scripts/zones/Foret_de_Hennetiel/TextIDs"] = nil;

require("scripts/globals/settings");
require("scripts/zones/Foret_de_Hennetiel/TextIDs");
require("scripts/globals/homepoint");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:PrintToPlayer("SoA is closed - you should not be here.");
    --[[
    homepointMenu( player, 8700, 47);
    ]]
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,4);
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

    if (csid == 8700) then

        if (option == 1) then
            player:setHomePoint();
            player:messageSpecial(HOMEPOINT_SET);
        else
            hpTeleport( player, option);
        end
    end
end;