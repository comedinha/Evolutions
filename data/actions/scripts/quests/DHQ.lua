local Pinkstonepos = {x = 63, y = 111, z = 10}
local TeleportToPos = {x = 60, y = 110, z = 9}
local TeleportInPos = {x = 74, y = 111, z = 10}
local LeverPos = {x = 90, y = 110, z = 10}
local TeleportoutPos = {x = 66, y = 113, z = 10}
local TimeToRemove  = 40

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
	local pinkstone1 = Pinkstonepos:getItemById(1355)
	local teleport = TeleportInPos:getItemById(1387)
	if item.itemid == 1945 then
		pinkstone1.uid:remove()
		doCreateItemEx(3311, 1)
		TeleportInPos:sendMagicEffect(CONST_ME_TELEPORT)
		player:sendTextMessage(MESSAGE_INFO_DESCR, "The stone was removed, take your winnings and get out!")
		addEvent(doRemoveTeleport, TimeToRemove * 1000)
	elseif item.itemid == 1946 then
		player:sendCancelMessage("Sorry, not possible.")
	end
	return true
end

function doRemoveTeleport()
	local teleport = TeleportInPos:getItemById(1387)
	local Lever = LeverPos:getItemById(1946)
    if teleport.uid > 0 then
		doCreateItem(1355, 1, Pinkstonepos)
		teleport.uid:remove()
		TeleportInPos:sendMagicEffect(CONST_ME_POFF)
		Lever.uid:transform(1945)
	end
end  