-----------------------------------------
-- ID: 5654
-- Item: Cherry Muffin
-- Food Effect: 1Hr, All Races
-----------------------------------------
-- Intelligence 2
-- MP % 10 (cap 85)
-- Agility -1
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD)) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,3600,5654);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_FASTCAST, 15);
	target:addMod(MOD_INT, 20);
	target:addMod(MOD_MND, 20);
	target:addMod(MOD_HPP, 10);
	target:addMod(MOD_MPP, 25);
	target:addMod(MOD_MATT, 15);
	target:addMod(MOD_MACC, 15);
	target:addMod(MOD_MPHEAL, 15);
	target:addMod(MOD_ENMITY, -20);
	target:addMod(MOD_SLOWRES, 5);
	pet:addMod(MOD_STR, 20);
	pet:addMod(MOD_DEX, 20);
	pet:addMod(MOD_VIT, 20);
	pet:addMod(MOD_AGI, 20);
	pet:addMod(MOD_INT, 20);
	pet:addMod(MOD_MND, 20);
	pet:addMod(MOD_CHR, 20);
	pet:addMod(MOD_MATT, 20);
	pet:addMod(MOD_MACC, 120);
	pet:addMod(MOD_ATTP, 20);
	pet:addMod(MOD_ACCP, 20);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectGain(target,effect)
	target:delMod(MOD_FASTCAST, 15);
	target:delMod(MOD_INT, 20);
	target:delMod(MOD_MND, 20);
	target:delMod(MOD_HPP, 10);
	target:delMod(MOD_MPP, 25);
	target:delMod(MOD_MATT, 15);
	target:delMod(MOD_MACC, 15);
	target:delMod(MOD_MPHEAL, 15);
	target:delMod(MOD_ENMITY, -20);
	target:delMod(MOD_SLOWRES, 5);
	pet:delMod(MOD_STR, 20);
	pet:delMod(MOD_DEX, 20);
	pet:delMod(MOD_VIT, 20);
	pet:delMod(MOD_AGI, 20);
	pet:delMod(MOD_INT, 20);
	pet:delMod(MOD_MND, 20);
	pet:delMod(MOD_CHR, 20);
	pet:delMod(MOD_MATT, 20);
	pet:delMod(MOD_MACC, 120);
	pet:delMod(MOD_ATTP, 20);
	pet:delMod(MOD_ACCP, 20);
end;
