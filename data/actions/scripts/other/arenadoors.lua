function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local cidPosition = player:getPosition()
	if item.actionid ~= 42357 then
		if (item.actionid == 42366 and player:getStorageValue(42355) >= 1) or (item.actionid == 42376 and player:getStorageValue(42355) >= 2) or (item.actionid == 42386 and player:getStorageValue(42355) == 3) then
			if cidPosition.x < toPosition.x then
				player:teleportTo({x=toPosition.x+1,y=toPosition.y,z=toPosition.z}, true)
			else
				player:teleportTo({x=toPosition.x-1,y=toPosition.y,z=toPosition.z}, true)
			end
			return true
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "You can not enter this room.")
			return true
		end
	elseif (item.actionid == 42357 and player:getStorageValue(42351) == 1) then
		if cidPosition.x < toPosition.x then
			player:teleportTo({x=toPosition.x+1,y=toPosition.y,z=toPosition.z}, true)
		else
			player:teleportTo({x=toPosition.x-1,y=toPosition.y,z=toPosition.z}, true)
		end
		return true
	else
		player:sendTextMessage(MESSAGE_INFO_DESCR, "First pay, then may not enter.")
		return true
	end
	return false
end