---------------------------------------------
--  Raksha Jugdment
--  Naraka

---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance") == 1) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 4;

    MobStatusEffectMove(mob, target, EFFECT_BLINDNESS, 10, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_SILENCE, 10, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_AMNESIA, 10, 0, 90);

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;
