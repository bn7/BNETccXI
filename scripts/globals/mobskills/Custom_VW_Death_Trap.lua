---------------------------------------------
-- Death Trap
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_POISON;
    local duration = 60;
    local power = 100;

    if (math.random() <= 0.5) then
        -- stun
        typeEffect = EFFECT_STUN;
        duration = 3;
        power = 10;
    end

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, power, 0, duration));

    mob:resetEnmity(target);
    return typeEffect;
end;