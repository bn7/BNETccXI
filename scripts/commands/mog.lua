---------------------------------------------------------------------------------------------------
-- func: Moogle
-- desc: opens mog house menu anywhere.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	player:sendMenu(1);
end