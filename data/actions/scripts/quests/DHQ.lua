local pinkstonepos1 = {x=63, y=111, z=10}        -- Blocking stone position.
local TeleportToPos = { x = 60, y = 110, z = 9} -- Position the player will be ported to when leaving the DHQ, like the Temple...
local TeleportInPos = { x = 74, y = 111, z = 10} -- Position In DHQ.
local LeverPos = { x = 90, y = 110, z = 10} -- Lever Position
local TeleportoutPos = { x = 66, y = 113, z = 10} -- Telporter out pos
local timeToRemove  = 40 -- Time before quest reset

function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)
	local pinkstone1 = getTileItemById(pinkstonepos1, 1355) -- You can change the ID to any other kind of blocking item
	local teleport = getTileItemById(TeleportInPos, 1387)
	if item.itemid == 1945 then
		doRemoveItem(pinkstone1.uid, 1)
		doCreateItemEx(3311, 1)
		doSendMagicEffect(TeleportInPos, CONST_ME_TELEPORT)
		doPlayerSendTextMessage(cid,22,"The stone was removed, take your winnings and get out!") -- Message when the lever is pulled
		addEvent(doRemoveTeleport, timeToRemove * 1000)
	elseif item.itemid == 1946 then
		doPlayerSendCancel(cid,"Sorry, not possible.") -- message if the lever is pulled again.
	end
	return true
end

function doRemoveTeleport()
	local teleport = getTileItemById(TeleportInPos, 1387)
	local Lever = getTileItemById(LeverPos, 1946)
    if teleport.uid > 0 then
		doCreateItem(1355, 1, pinkstonepos1)
		doRemoveItem(teleport.uid)
		doSendMagicEffect(TeleportInPos, CONST_ME_POFF)
		doTransformItem(Lever.uid, 1945)
	end
end  