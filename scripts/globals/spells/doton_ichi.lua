-----------------------------------------
-- Spell: Doton: Ichi
-- Deals earth damage to an enemy and lowers its resistance against wind.
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    --doNinjutsuNuke(V,M,caster,spell,target,hasMultipleTargetReduction,resistBonus)
    local duration = 15 + caster:getMerit(MERIT_DOTON_EFFECT) -- T1 bonus debuff duration
    local bonusAcc = 10;
    local bonusMab = 5+caster:getMerit(MERIT_DOTON_EFFECT); -- T1 mag atk

    local dmg = doNinjutsuNuke(28,0.5,caster,spell,target,false,bonusAcc,bonusMab);
    handleNinjutsuDebuff(caster,target,spell,30,duration,MOD_WINDRES);

    return dmg;
end;