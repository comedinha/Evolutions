function onStepIn(creature, item, position, fromPosition)
	if not Player(creature) then
		return true
	end
	
	if creature:getStorageValue(item.actionid) == -1 then
		creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You discovered this area!")
		creature:setStorageValue(item.actionid, 1)
		creature:setStorageValue(item.actionid - 1000, 1)
		creature:setStorageValue(11552, creature:getStorageValue(11552) + 1)
	end
end