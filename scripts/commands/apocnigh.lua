--------------------------------------------------------------
-- func: apocnigh
-- desc: opens a custom shop to access buying the apoc nigh earrings.
--------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

require("scripts/globals/missions");
require("scripts/globals/titles");

function onTrigger(player)

    -- Must have RoZ and CoP done and rank 9.. (To what Legion can do currently, edit this later as needed.)
    local Zilart_clear = player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS);
    local Chains_clear = player:hasCompletedMission(COP,WHEN_ANGELS_FALL);
    local current_rank = player:getRank();

    if (Zilart_clear == true and Chains_clear == true and current_rank >= 9) then

        local stock = { 
            15965, 500000, -- Ethereal Earring
            15964, 500000, -- Hallow Earring
            15963, 500000, -- Magnetic Earring
            15962, 500000, -- Static Earring
        };

        if (player:getName() == 'Nyaarun' or 'Unk' or 'Ace') then -- LOL
            stock = { 
                15965, 99999999, -- Ethereal Earring
                15964, 99999999, -- Hallow Earring
                15963, 99999999, -- Magnetic Earring
                15962, 99999999, -- Static Earring
            };
        end

        showShop(player, STATIC, stock);
        player:PrintToPlayer("You have proven your worth, enjoy the rewards..");

    else
        player:PrintToPlayer("You are not worthy..");
    end
end