---------------------------------------------------------------------------------------------------
-- func: Sky
-- desc: Sets the players position to specific location (Sky).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};

function onTrigger(player, x, y, z, zone)
    player:setPos('0', '-54', '-600', '192', '130');
end