---------------------------------------------------
-- Taksha Bliss
-- Naraka
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance") == 0) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 10;
    local dmgmod = 2.0;

    MobStatusEffectMove(mob, target, EFFECT_BLINDNESS, 25, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_MAGIC_ATK_DOWN, 100, 0, 90);

    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,1.5,2);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);
    target:delHP(dmg);
    return dmg;
end;