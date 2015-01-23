-----------------------------------
--
-- Zone: PsoXja (9)
--
-----------------------------------
package.loaded["scripts/zones/PsoXja/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/zones/PsoXja/TextIDs");
require("scripts/globals/missions");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
	zone:registerRegion(1,-21.469,27.000,-24.255, -18.723,32.000,-19.877); -- 40 cap (H-8 Tower)
	zone:registerRegion(2, 337.376,27,-19.836, 342.340,32,-16.055); -- 50 cap area (J-8 Tower)
	zone:registerRegion(3, 95.659,42,-302.390, 99.973,48,-297.744); -- 60 cap area (H-10 Tower)
	zone:registerRegion(4, -384.452,26,257.961, -379.945,32,262.558); -- Uncapped area 1 (F-7 Tower)
	zone:registerRegion(5, -302.493,42,-179.995, -297.386,48,-176.078); -- Uncapped area 2 (G-9 Tower)
	zone:registerRegion(6, 299.847,42, 257.716, 303.824,48,262.391); -- Uncapped area 3 (I-7 Tower)

	-- Begin workarounds for easily broken elevators
	zone:registerRegion(7, -20, 9, 20, 0, 0, 0); -- Elevator to/from Diablos
	zone:registerRegion(8, -340, 10, 340, 0, 0, 0); -- Elevator to/from Promy 
	zone:registerRegion(9, -300, 10, 340, 0, 0, 0); -- Elevator to/from ?
	zone:registerRegion(10, 300, 10, -60, 0, 0, 0); -- Elevator to/from Tenzen's Path Avatar Gate (A)
	zone:registerRegion(11, -340, 10, -220, 0, 0, 0); -- Elevator to/from Avatar Gate (B)
	zone:registerRegion(12, 260, 10, 300, 0, 0, 0); -- Elevator to/from Avatar Gate (C)
	zone:registerRegion(13, 140, 10, 340, 0, 0, 0); -- Elevator to/from Avatar Gate (D)
	-- End workarounds for easily broken elevators

    UpdateTreasureSpawnPoint(16814557);
end;

-----------------------------------
-- onConquestUpdate
-----------------------------------

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
	local cs = -1;
	local playerX = player:getXPos();

	if ((playerX == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
		player:setPos(-29.956,-1.903,212.521,188);
	end
	if(ENABLE_COP_ZONE_CAP == 1)then
		local LVLcap = player:getVar("PSOXJA_RESTRICTION_LVL");
		if (LVLcap > 0)then
			player:addStatusEffect(EFFECT_LEVEL_RESTRICTION,LVLcap,0,0);-- ZONE LEVEL RESTRICTION
		end
	 end
	if(playerX == -300 and player:getCurrentMission(COP) == THE_ENDURING_TUMULT_OF_WAR and player:getVar("PromathiaStatus")==2)then
		cs = 0x0001; -- COP event
	elseif(playerX == 220 and player:getCurrentMission(COP) == THREE_PATHS and player:getVar("COP_Tenzen_s_Path") == 8)then
		cs = 0x0004;
	end
	return cs;
end;

-----------------------------------
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
	if(region:GetRegionID() == 1) then
		player:startEvent(0x0014);
	elseif(region:GetRegionID() == 2) then
		player:startEvent(0x0015);
	elseif(region:GetRegionID() == 3) then
		player:startEvent(0x0016);
	elseif(region:GetRegionID() == 4) then
		player:startEvent(0x0017);
	elseif(region:GetRegionID() == 5) then
		player:startEvent(0x0018);
	elseif(region:GetRegionID() == 6) then
		player:startEvent(0x0019);
	elseif(region:GetRegionID() == 7) then -- Diablos Elevator
		if (player:getYPos() < 1) then
			-- player:PrintToPlayer("Going down!");
			player:setPos(-20, 31, 33, 192);
		elseif (player:getYPos() > 33 and player:getYPos() < 29) then
			-- player:PrintToPlayer("Going up!");
			player:setPos(-28, -1, 20, 128);
		else
			player:PrintToPlayer("ERROR! Report Diablos elevator bug please!");
		end
	elseif(region:GetRegionID() == 8) then -- Promy Vahzl Elevator
		if (player:getYPos() < 2) then
			-- player:PrintToPlayer("Going down!");
			player:setPos(-348, 48, 340, 128);
		elseif (player:getYPos() > 46 and player:getYPos() < 50) then
			-- player:PrintToPlayer("Going up!");
			player:setPos(-340, -0.5, 332, 64);
		else
			player:PrintToPlayer("ERROR! Report Promy-Vahzl elevator bug please!");
		end
	elseif (region:GetRegionID() == 9) then -- ? Elevator
		if (player:getYPos() < 2) then
			-- player:PrintToPlayer("Going down!");
			player:setPos(-290, 48, 340, 128);
		elseif (player:getYPos() > 46 and player:getYPos() < 50) then
			-- player:PrintToPlayer("Going up!");
			player:setPos(-300, -0.5, 332, 64);
		else
			player:PrintToPlayer("ERROR! Report Pso'Xja elevator bug please!");
		end
	elseif( region:on:GetRegionID() == 10) then -- Tenzen's Path Avatar Gate (A) Elevator
		if (player:getYPos() < 2) then
			-- player:PrintToPlayer("Going down!");
			player:setPos(292, 32, -60, 128);
		elseif (player:getYPos() > 30 and player:getYPos() < 34) then
			-- player:PrintToPlayer("Going up!");
			player:setPos(300, -0.5, -50, 192);
		else
			player:PrintToPlayer("ERROR! Report Tenzen's Path Avatar Gate (A) elevator bug please!");
		end
	elseif( region:on:GetRegionID() == 11) then -- Avatar Gate (B) Elevator
		if (player:getYPos() < 2) then
			-- player:PrintToPlayer("Going down!");
			player:setPos(-348, 48, -220, 128);
		elseif (player:getYPos() > 46 and player:getYPos() < 50) then
			-- player:PrintToPlayer("Going up!");
			player:setPos(-340, -0.5, -210, 192);
		else
			player:PrintToPlayer("ERROR! Report Avatar Gate (B) elevator bug please!");
		end
	elseif( region:on:GetRegionID() == 12) then -- Avatar Gate (C) Elevator
		if (player:getYPos() > 17 and player:getYPos() < 13) then
			-- player:PrintToPlayer("Going down!");
			player:setPos(260, 48, 308, 192);
		elseif (player:getYPos() > 40) then
			-- player:PrintToPlayer("Going up!");
			player:setPos(250, 15.5, 300, 128);
		else
			player:PrintToPlayer("ERROR! Report Avatar Gate (C) elevator bug please!");
		end
	elseif( region:on:GetRegionID() == 13) then -- Avatar Gate (D) Elevator
		if (player:getYPos() > 17 and player:getYPos() < 13) then
			-- player:PrintToPlayer("Going down!");
			player:setPos(140, 48, -348, 64);
		elseif (player:getYPos() > 46 and player:getYPos() < 50) then
			-- player:PrintToPlayer("Going up!");
			player:setPos(250, 15.5, -348, 64);
		else
			player:PrintToPlayer("ERROR! Report Avatar Gate (D) elevator bug please!");
		end
	end
end;

-----------------------------------
-- onRegionLeave
-----------------------------------

function onRegionLeave(player,region)
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
	if(csid == 0x0001)then
		player:setVar("PromathiaStatus",3);
	elseif(csid == 0x0004)then
		player:setVar("COP_Tenzen_s_Path",9);
	elseif(csid == 0x0014 and option == 1) then
		player:setPos(-20,-60.250,-60,63,111);
	elseif(csid == 0x0015 and option == 1) then
		player:setPos(260,-0.25,-20,254,111);
	elseif(csid == 0x0016 and option == 1) then
		player:setPos(60,-0.250,-340.000,190,111);
	elseif(csid == 0x0017 and option == 1) then
		player:setPos(-340,-100.250,140,63,111);
	elseif(csid == 0x0018 and option == 1) then
		player:setPos(-180,-40.25 ,-220,0,111);
	elseif(csid == 0x0019 and option == 1) then
		player:setPos(100,-20.25,140,64,111);
	end
end;
