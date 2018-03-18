---------------------------------------------------------------------------------------------------
-- func: !nm -- Spawns a ton of NMs at once 
-- desc: Allows GM's to trigger NMs that are commonly requested. Add more if you tell me!
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiii"
};

function onTrigger(player)
    SpawnMob('17678350','160000'); -- SeaHorror
    SpawnMob('17682446','160000'); -- SeaHorror
    SpawnMob('17215494','160000'); -- BUBBLY BERNIE
end