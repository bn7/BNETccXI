---------------------------------------------------------------------------------------------------
-- func: gmisland
-- desc: Sets the players position to secret island... muahahaha
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player, x, y, z, zone)
    player:setPos('0', '0', '443', '59', '104');
end