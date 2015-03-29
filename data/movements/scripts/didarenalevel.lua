function onStepIn(creature, item, position, fromPosition)
	if creature:getStorageValue(item.actionid+creature:getStorageValue(42355)*10-1) == 1 then
		creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You did arena at level ".. creature:getStorageValue(42355) + 1 .."! Now you can take your reward.")
		creature:setStorageValue(42355, creature:getStorageValue(42355) + 1)
		creature:setStorageValue(item.actionid+getPlayerStorageValue(cid, 42355) * 10, 1)
		Game.setStorageValue(item.actionid - 1, 0)
		creature:setStorageValue(42350, os.time() + 5)
		creature:setStorageValue(42352, 0)
		creature:teleportTo(arenaKickPosition, true)
	else
		creature:teleportTo(fromPosition, true)
		creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "First kill monster!")
	end
end