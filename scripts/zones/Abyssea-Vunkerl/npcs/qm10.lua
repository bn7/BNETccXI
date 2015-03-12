-----------------------------------
-- Zone: Abyssea-Vunkeral
-- NPC: ???
-- Spawns: Armillaria
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (trade:hasItemQty(3107,1) == false) then -- Player is missing at least one required item.
        player:startEvent(1010, 3107); -- Inform payer what items they need.
    elseif (GetMobAction(17666496) == ACTION_NONE) then -- mob not already spawned from this
        if (trade:hasItemQty(3107,1) and trade:getItemCount() == 2) then -- Player has all the required items.
            SpawnMob(17666496, 300):updateEnmity(player); -- Spawn NM, Despawn after inactive for 5 minutes (pt has to reclaim within 5 of a wipe)
            player:tradeComplete();
        end
    end
end;