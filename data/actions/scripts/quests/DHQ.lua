local Pinkstonepos = {x = 63, y = 111, z = 10}
local LeverPos = {x = 90, y = 110, z = 10}
local TimeToRemove  = 40

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local pinkstone1 = Tile(Pinkstonepos):getItemById(1355)
	if item.itemid == 1945 then
		if pinkstone1 then
			pinkstone1:remove()
			player:sendTextMessage(MESSAGE_INFO_DESCR, "The stone was removed, take your winnings and get out!")
		end
		addEvent(doRemoveDHQ, TimeToRemove * 1000)
		item:transform(1946)
	elseif item.itemid == 1946 then
		player:sendCancelMessage("Sorry, not possible.")
	end
	return true
end

function doRemoveDHQ()
	if not Tile(Pinkstonepos):getItemById(1355) then
		doCreateItem(1355, 1, Pinkstonepos)
	end
	local lever = Tile(LeverPos):getItemById(1946)
	if lever then
		lever:transform(1945)
	end
end  