---------------------------------------------------
-- Hellclap
--
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
  if(mob:getFamily() == 91) then
    local mobSkin = mob:getModelId();

    if (mobSkin == 1840) then
        return 0;
    else
        return 1;
    end
  end

  if(mob:getFamily() == 316) then
    local mobSkin = mob:getModelId();

    if (mobSkin == 1839) then
        return 0;
    else
        return 1;
    end
  end

  return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 10;
    local dmgmod = 4.0;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded*math.random(2,3));
    local typeEffect = EFFECT_BIND;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 1, 0, 4);
    target:delHP(dmg);

    return dmg;
end;
