---------------------------------------------------------------------------------------------------
-- func: Server wide buffs.
-- desc: gives players refresh/regen/regain/haste.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player) -- 
    player:addStatusEffect(EFFECT_REFRESH,25,0,0);
    player:addStatusEffect(EFFECT_HASTE,60,1,0);
    if (player:getMainLvl() <= 98) or (player:getGMLevel() >= 1) then
        player:addStatusEffect(EFFECT_REGEN,25,0,0);
        player:addStatusEffect(EFFECT_REGAIN,15,1,0);
    end
end