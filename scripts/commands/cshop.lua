--------------------------------------------------------------
-- func: cshop <page>
-- desc: opens a custom shop anywhere in the world (crafting)
--------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "i"
};

function onTrigger(player, page)

    -- Check for no argument..
    if (page == 0 or page == nil) then
        player:PrintToPlayer('--= Temporary Crafting Material Shops =--');
        player:PrintToPlayer('1: Alchemy,    2: Bonecraft,        3: Clothcraft');
        player:PrintToPlayer('4: Cooking,    5: Goldsmithing,     6: Leathercraft');
        player:PrintToPlayer('7: Smithing,   8: Woodworking');
        return;
    end

    -- Alchemy
    if (page == 1 or page == 'alchemy') then

        --local stock = { };
        --showShop(player, STATIC, stock);
        --player:PrintToPlayer("Alchemy temp-fix crafting materials.");

    -- Bonecraft
    elseif (page == 2 or page == 'bonecraft') then

        local stock = {
            2654,   350000,     -- Dark Ixion Horn
            2371,   350000,     -- Khimaira Horn
        };
        showShop(player, STATIC, stock);
        player:PrintToPlayer("Bonecraft temp-fix crafting materials.");

    -- Clothcraft
    elseif (page == 3 or page == 'clothcraft') then

        local stock = {
            2655,   50000,    -- Dark Ixion Tail
        };
        showShop(player, STATIC, stock);
        player:PrintToPlayer("Clothcraft temp-fix crafting materials.");

    -- Cooking
    elseif (page == 4 or page == 'cooking') then

        local stock = {
            5534,   50000,     -- Apkallufa
            5662,   50000,     -- Dragon Fruit
            5965,   50000,     -- Head of Isleracea
            4273,   50000,     -- Kitron
            4017,   50000,     -- Mandragora Sprout
        };
        showShop(player, STATIC, stock);
        player:PrintToPlayer("Cooking temp-fix crafting materials.");

    -- Goldsmithing
    elseif (page == 5 or page == 'goldsmithing') then

        local stock = {
            2228,   30000,     -- Luminium Ore
        };
        showShop(player, STATIC, stock);
        player:PrintToPlayer("Goldsmithing temp-fix crafting materials.");

    -- Leathercraft
    elseif (page == 6 or page == 'leathercraft') then

        --local stock = { };
        --showShop(player, STATIC, stock);
        --player:PrintToPlayer("Leathercraft temp-fix crafting materials.");

    -- Smithing
    elseif (page == 7 or page == 'smithing') then

        --local stock = { };
        --showShop(player, STATIC, stock);
        --player:PrintToPlayer("Smithing temp-fix crafting materials.");

    -- Woodworking
    elseif (page == 8 or page == 'woodworking') then

        local stock = {
            1762,   350000,     -- Cassia Lumber
            4018,   400000,     -- Guatambu Log
            732,    400000,     -- Kapor Log
            17073,  850000,   -- Mistilteinn
        };
        showShop(player, STATIC, stock);
        player:PrintToPlayer("Woodworking temp-fix crafting materials.");

    else
        -- Unknown / Invalid Page
        player:PrintToPlayer(string.format("Invalid page; page %i not found.", page));
    end

    return;
end;