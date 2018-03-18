---------------------------------------------------------------------------------------------------
-- func: nuke
-- desc: expresses GM anger on cursor target
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    local victim = player:getCursorTarget();

    if (victim == nil) then
        player:PrintToPlayer("Must target a player with cursor!");
        return;
    end

    if (victim:isPC() == false) then
        player:PrintToPlayer("Must target a player with cursor!");
        return;
    end

    if (os.time() - player:getVar("GM_LAST_NUKE") > 9) then
        player:setVar("GM_LAST_NUKE", os.time());
        -- Begin Wrath of the Gods Animation
        victim:injectActionPacket(5, 207, 0, 0, 0);
        victim:injectActionPacket(5, 270, 0, 0, 0);
        -- End Wrath of the Gods Animation
        victim:PrintToPlayer("Some tyrant GM just nuked you. o_O; ");
    else
        player:PrintToPlayer("Too soon to zap again.");
    end
end