---------------------------------------------------------------------------------------------------
-- func: Teleports player to Homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)
        player:warp()
        player:PrintToPlayer( string.format( "Welcome Home!!!" ) );
end;