-----------------------------------
-- Area: Qu'Bia Arena
--  MOB: Maat
-- Genkai 5 Fight
-----------------------------------
package.loaded["scripts/zones/QuBia_Arena/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/QuBia_Arena/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    if (target:hasStatusEffect(EFFECT_FOOD) == true and mob:hasStatusEffect(EFFECT_FOOD) == false) then
        local FOOD_ID = target:getStatusEffect(EFFECT_FOOD):getSubType();
        if (FOOD_ID == 5163 or FOOD_ID == 5610 or FOOD_ID == 5718 or FOOD_ID == 5764 or FOOD_ID == 5765) then
            mob:SpoofChatParty("eats the same food you did!", MESSAGE_EMOTION);
            mob:addStatusEffect(EFFECT_FOOD,0,0,600,FOOD_ID);
            mob:SpoofChatParty("Maat gains the effect of OH-SNAP!", MESSAGE_ECHO);
        else
            mob:SpoofChatParty("drinks Granny's Tonic!", MESSAGE_EMOTION);
            mob:addStatusEffect(EFFECT_FOOD,0,0,600,5674);
            mob:SpoofChatParty("Maat gains the effect of OH-SNAP!", MESSAGE_ECHO);
        end
    end
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
    target:showText(mob,YOU_DECIDED_TO_SHOW_UP);
    printf("Maat Qubia Arena works");
    -- When he take damage: target:showText(mob,THAT_LL_HURT_IN_THE_MORNING);
    -- He use dragon kick or tackle: target:showText(mob,TAKE_THAT_YOU_WHIPPERSNAPPER);
    -- He use spining attack: target:showText(mob,TEACH_YOU_TO_RESPECT_ELDERS);
    -- If you dying: target:showText(mob,LOOKS_LIKE_YOU_WERENT_READY);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local bf = mob:getBattlefield();

    if (mob:getHPP() <20) then
        bf:win();
        return;
    end
end;


-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:showText(mob,YOUVE_COME_A_LONG_WAY);
end;
