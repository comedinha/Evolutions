function onStepIn(creature, item, position, fromPosition)
	if creature:getStorageValue(42309) < 1 then
		for i = 42300, 42309 do
			creature:setStorageValue(i, 0)
		end
	end
	if creature:getStorageValue(42319) < 1 then
		for i = 42310, 42319 do
			creature:setStorageValue(i, 0)
		end
	end
	if creature:getStorageValue(42329) < 1 then
		for i = 42320, 42329 do
			creature:setStorageValue(i, 0)
		end
	end
	creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, "You left arena!")
	creature:teleportTo(arenaKickPosition, true)
	Game.setStorageValue(item.actionid-21, 0)
	creature:setStorageValue(42350, os.time()+5)
	creature:setStorageValue(42352, 0)
end
