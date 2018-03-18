--------------------------------------------
-- func: BNETcc Abjuration Shop
--------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
    player:PrintToPlayer("Welcome to BNET.cc's shop Abjurations!", 0xF);
stock = {
    1441, 100000, -- Lib Abjuration
    1442, 100000, -- Obl Abjuration
    1324, 1000000, -- A Abjuration Head
    1325, 1000000, -- A Abjuration Body
    1326, 1000000, -- A Abjuration Hands
    1327, 1000000, -- A Abjuration Legs
    1328, 1000000, -- A Abjuration Feet
    1314, 1000000, -- D Abjuration Head
    1315, 1000000, -- D Abjuration Body
    1316, 1000000, -- D Abjuration Hands
    1317, 1000000, -- D Abjuration Legs
    1318, 1000000, -- D Abjuration Feet
    1319, 1000000, -- E Abjuration Head
    1320, 1000000, -- E Abjuration Body
    1321, 1000000, -- E Abjuration Hands
    1322, 1000000, -- E Abjuration Legs
    1323, 1000000, -- E Abjuration Feet
    1329, 1000000, -- M Abjuration Head
    1330, 1000000, -- M Abjuration Body
    1331, 1000000, -- M Abjuration Hands
    1332, 1000000, -- M Abjuration Legs
    1333, 1000000, -- M Abjuration Feet
    1339, 1000000, -- N Abjuration Head
    1340, 1000000, -- N Abjuration Body
    1341, 1000000, -- N Abjuration Hands
    1342, 1000000, -- N Abjuration Legs
    1343, 1000000, -- N Abjuration Feet
    1334, 1000000, -- W Abjuration Head
    1335, 1000000, -- W Abjuration Body
    1336, 1000000, -- W Abjuration Hands
    1337, 1000000, -- W Abjuration Legs
    1338, 1000000, -- W Abjuration Feet
    }
showShop(player, STATIC, stock);
end;