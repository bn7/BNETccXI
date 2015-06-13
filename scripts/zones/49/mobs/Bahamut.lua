-----------------------------------
-- Area: inSomeZone
-- NPC:  bahamut
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- onMobInibahamutlize Action
-----------------------------------

function onMobInibahamutlize(mob)
    mob:addMod(MOD_DMGMAGIC, 40);
    mob:addMod(MOD_DMGRANGE, 40);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 300);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2500);
    mob:setMod(MOD_ACC,2500);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:setMod(MOD_FIRE_AFFINITY,5);
    mob:setMod(MOD_WIND_AFFINITY,5);
    mob:setMod(MOD_EARTH_AFFINITY,5);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,25);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_HUMANOID_KILLER, 5);
    mob:setMod(MOD_TERRORRES, 100);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
    mob:delStatusEffect(EFFECT_RAGE);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

    local bahamut_2hr = mob:getLocalVar("bahamut_2hr");

    if (mob:getBattleTime() > 5400 and mob:getLocalVar("RAGED") == 0) then
        mob:addStatusEffectEx(EFFECT_RAGE,0,1,0,0);
        mob:setLocalVar("RAGED", 1);
    end

	if (mob:getHPP() <= 10 and bahamut_2hr == 8) then
		mob:useMobAbility(1297); -- Teraflare
		mob:useMobAbility(438); -- Invinceible
		mob:setLocalVar("bahamut_2hr", 9);
	elseif (mob:getHPP() <= 20 and bahamut_2hr == 7) then
		mob:useMobAbility(1297); -- Gigaflare
		mob:useMobAbility(436); -- Chainspell
		mob:setLocalVar("bahamut_2hr", 8);
	elseif (mob:getHPP() <= 30 and bahamut_2hr == 6) then
		mob:useMobAbility(1297); -- Gigaflare
		mob:useMobAbility(438); -- Invinceible
		mob:setLocalVar("bahamut_2hr", 7);
	elseif (mob:getHPP() <= 40 and bahamut_2hr == 5) then
		mob:useMobAbility(1296); -- Gigaflare
		mob:useMobAbility(3009); -- Elemental_Sforzo
		mob:setLocalVar("bahamut_2hr", 6);
	elseif (mob:getHPP() <= 50 and bahamut_2hr == 4) then
		mob:useMobAbility(1296); -- Gigaflare
		mob:useMobAbility(438); -- Invinceible
		mob:setLocalVar("bahamut_2hr", 5);
	elseif (mob:getHPP() <= 60 and bahamut_2hr == 3) then
		mob:useMobAbility(1296); -- Gigaflare
		mob:useMobAbility(436); -- Chainspell
		mob:setLocalVar("bahamut_2hr", 4);
	elseif (mob:getHPP() <= 70 and bahamut_2hr == 2) then
		mob:useMobAbility(1296); -- Gigaflare
		mob:useMobAbility(438); -- Invinceible
		mob:setLocalVar("bahamut_2hr", 3);
	elseif (mob:getHPP() <= 80 and bahamut_2hr == 1) then
		mob:useMobAbility(1296); -- Gigaflare
		mob:useMobAbility(436); -- Elemental_Sforzo
		mob:setLocalVar("bahamut_2hr", 2);
	elseif (mob:getHPP() <= 90 and bahamut_2hr == 0) then
		mob:useMobAbility(1296); -- Gigaflare
		mob:useMobAbility(438); -- Invinceible
		mob:setLocalVar("bahamut_2hr", 1);
	end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then  -- AoE Meteor
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    elseif (spell:getID() == 496) then -- AoE Impact
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) ~= 3) or (target:hasStatusEffect(EFFECT_CURSE_I) == true)) then
        return 0,0,0;
    else
        local duration = 10;
        target:addStatusEffect(EFFECT_CURSE_I,40,0,duration);
        return SUBEFFECT_CURSE,163,EFFECT_CURSE_I;
    end
end;

-----------------------------------
-- onMobDrawIn
-----------------------------------

function onMobDrawIn(mob, target) -- Bind / Wing on Draw In
    target:addStatusEffect(EFFECT_BIND, 1, 0, 3);
    mob:useMobAbility(1287);
    mob:addTP(100);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    -- killer:addTitle(WYRM_ASTONISHER);
end;