function onStepIn(creature, item, position, fromPosition)
	local teleport = {
		[16011] = {x=2254, y=2330, z=5},
		[16012] = {x=2286, y=2329, z=5},
		[16013] = {x=2269, y=2370, z=5},
		[16014] = {x=2304, y=2370, z=5},
		[16015] = {x=2344, y=2330, z=5},
		[16016] = {x=2349, y=2372, z=5}
	}

	if not Player(creature) then
		creature:teleportTo(fromPosition, false)
		return true
	end

	if creature:getStorageValue(item.actionid) == 1 then
		creature:teleportTo(teleport[item.actionid], true)
	else
		creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You have not yet reached here!")
		creature:teleportTo(fromPosition, false)
	end
end