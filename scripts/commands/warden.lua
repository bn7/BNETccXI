---------------------------------------------------------------------------------------------------
-- func: Teleports player to Pandemonium Warden.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player, x, y, z, zone)
    player:setPos('199', '33', '-115', '55', '68');
end