---------------------------------------------------------------------------------------------------
-- func: addkeyitem UNK
-- desc: Adds a key item to the player.
---------------------------------------------------------------------------------------------------

require("scripts/globals/keyitems");

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("Tell Tagban he fucked up.");
end;

function onTrigger(player)
        player:addKeyItem(486);
        player:messageSpecial( KEYITEM_OBTAINED, 486 );
		        player:addKeyItem(487);
        player:messageSpecial( KEYITEM_OBTAINED, 487 );
		        player:addKeyItem(488);
        player:messageSpecial( KEYITEM_OBTAINED, 488 );
		        player:addKeyItem(489);
        player:messageSpecial( KEYITEM_OBTAINED, 489 );
		        player:addKeyItem(490);
        player:messageSpecial( KEYITEM_OBTAINED, 490 );
		        player:addKeyItem(491);
        player:messageSpecial( KEYITEM_OBTAINED, 491 );
		        player:addKeyItem(492);
        player:messageSpecial( KEYITEM_OBTAINED, 492 );
		        player:addKeyItem(739);
        player:messageSpecial( KEYITEM_OBTAINED, 739 );
		        player:addKeyItem(740);
        player:messageSpecial( KEYITEM_OBTAINED, 740 );
		        player:addKeyItem(741);
        player:messageSpecial( KEYITEM_OBTAINED, 741 );
		        player:addKeyItem(742);
        player:messageSpecial( KEYITEM_OBTAINED, 742 );
		        player:addKeyItem(590);
        player:messageSpecial( KEYITEM_OBTAINED, 590 );
				        player:addKeyItem(591);
        player:messageSpecial( KEYITEM_OBTAINED, 591 );
				        player:addKeyItem(592);
        player:messageSpecial( KEYITEM_OBTAINED, 592 );
				        player:addKeyItem(593);
        player:messageSpecial( KEYITEM_OBTAINED, 593 );
				        player:addKeyItem(594);
        player:messageSpecial( KEYITEM_OBTAINED, 594 );
				        player:addKeyItem(452);
        player:messageSpecial( KEYITEM_OBTAINED, 452 );
end
