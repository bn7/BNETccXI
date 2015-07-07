---------------------------------------------------------------------------------------------------
-- @troll3 -- Spawns 3rd wave of Trolls
--
-- Besieged
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)

    local assistant = false;
    if (player:getVar("AssistantGM") == 1 and (player:checkNameFlags(0x02002000) or player:checkNameFlags(0x02022000))) then
        assistant = true;
    end

   local gmlvl = player:getGMLevel();
   -- Char must be an actual GM, or an assistant.
    if (gmlvl >= 1 or assistant == true) then
      SpawnMob('16974001'); -- Slaughterous Scorpion
      SpawnMob('16974003'); -- Gere
      SpawnMob('16974004'); -- Girzorhor_The_Imprudent
      SpawnMob('16974005'); -- Surmerdar
      SpawnMob('16974006'); -- Dartorgor
      SpawnMob('16974007'); -- Vorporlor
      SpawnMob('16974008'); -- Vorjirzur
      SpawnMob('16974009'); -- Worbordor
      SpawnMob('16974010'); -- Cobalt sentinel
      SpawnMob('16974011'); -- White sentinel
      SpawnMob('16974012'); -- Hazel Sentinel
      SpawnMob('16974013'); -- Carmine Sentinel
      SpawnMob('16974014'); -- Xarhorkur_the_Claviger
      SpawnMob('16974015'); -- Zurmurwur_the_Ruthless
      SpawnMob('16974016'); -- Troll destroyer
      SpawnMob('16974017'); -- Troll destroyer
      SpawnMob('16974018'); -- Troll destroyer
      SpawnMob('16974019'); -- Troll destroyer
      SpawnMob('16974020'); -- Troll destroyer
      SpawnMob('16974021'); -- Troll destroyer
    end
end;