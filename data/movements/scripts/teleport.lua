function onStepIn(creature, item, position, fromPosition)
	local teleport = {
		[18001] = {x=137, y=49, z=7},
		[18002] = {x=149, y=151, z=7},
		[18003] = {x=84, y=175, z=7},
		[18004] = {x=160, y=167, z=7},
		[18005] = {x=161, y=71, z=7},
		[18006] = {x=48, y=166, z=7},
		[18007] = {x=167, y=43, z=7},
		[18008] = {x=56, y=146, z=7}
	}

	if not Player(creature) then
		creature:teleportTo(fromPosition, false)
		return true
	end

	if creature:getStorageValue(item.actionid) == 1 then
		creature:teleportTo(teleport[item.actionid], false)
		creature:setStorageValue(18000, 1)
	else
		creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You must discover the area before releasing the Fast Travel!")
		creature:teleportTo(fromPosition, false)
	end
end