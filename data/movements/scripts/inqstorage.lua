function onStepIn(creature, item, position, fromPosition)
	if not Player(creature) then
		return true
	end

	if creature:getStorageValue(item.actionid) == -1 then
		creature:setStorageValue(item.actionid, 1)
		creature:setStorageValue(item.actionid + 10, 1)
	end
end