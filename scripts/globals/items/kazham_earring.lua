------------------------------------------- ID: 16046-- Item: Kazham Earring-- Enchantment: "Teleport" (Kazham)-----------------------------------------require("scripts/globals/teleports")require("scripts/globals/settings");require("scripts/globals/status");------------------------------------------- OnItemCheck-----------------------------------------function onItemCheck(target)    local result = 0;    if (target:isZoneVisited(250) == false) then        result = 56;    end    return result;end;------------------------------------------- OnItemUse-----------------------------------------function onItemUse(target)    kazhamEarring(target);end;