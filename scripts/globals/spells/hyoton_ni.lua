-----------------------------------------
-- Spell: Hyoton: Ni
-- Deals ice damage to an enemy and lowers its resistance against fire.
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
    local duration = 15 + caster:getMerit(MERIT_HYOTON_EFFECT) -- T1 bonus debuff duration
    local bonusAcc = 11;
    local bonusMab = 9+caster:getMerit(MERIT_HYOTON_EFFECT)-- T1 mag atk

    local dmg = doNinjutsuNuke(69,1,caster,spell,target,false,bonusAcc,bonusMab);
    handleNinjutsuDebuff(caster,target,spell,30,duration,MOD_FIRERES);

    return dmg;
end;