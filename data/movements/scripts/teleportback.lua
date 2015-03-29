function onStepIn(creature, item, position, fromPosition)
	local backpos = {x=100, y=40, z=6}

	if not Player(creature) or creature:isPzLocked() then
		creature:teleportTo(fromPosition, false)
		return true
	end

	if creature:getStorageValue(18000) == 1 then
		creature:teleportTo(backpos, false)
		creature:setStorageValue(18000, -1)
	else
		creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You can not even back here!")
		creature:teleportTo(fromPosition, false)
	end
end
